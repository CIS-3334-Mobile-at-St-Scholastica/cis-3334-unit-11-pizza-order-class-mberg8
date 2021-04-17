import 'package:flutter/material.dart';
import 'package:flutter_pizza_list/pizza.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CIS 3334 Pizza',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Pizza App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}
List<Pizza> pizzasInOrder = [];

class _MyHomePageState extends State<MyHomePage> {


  void _addPizza() {
    final pizzaToppingTextField = TextEditingController();
    int _sizeSelected = 1;
    showDialog(
        context: context,
        builder: (context) {
          return Dialog(
              child: SizedBox(
                height: 200,
                child:  Column(
                  children: <Widget>[
                    Text(
                      'Toppings:',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                    TextField(
                      controller: pizzaToppingTextField,
                      style: Theme.of(context).textTheme.headline4,
                    ),
                    DropdownButton(
                        style: Theme.of(context).textTheme.headline4,
                        value: _sizeSelected,
                        items:[
                          DropdownMenuItem(child: Text("Small"), value: 0),
                          DropdownMenuItem(child: Text("Medium"), value: 1),
                          DropdownMenuItem(child: Text("Large"), value: 2),
                          DropdownMenuItem(child: Text("X-Large"), value: 3)
                        ],
                        onChanged: (value) {
                          setState(() {
                            _sizeSelected = value;
                          });
                        }),
                    ElevatedButton(
                      child: Text('Add Pizza'),
                      onPressed: () {
                        print("Adding a pizza");
                        setState(() {
                          Pizza newPizza = new Pizza(_sizeSelected, pizzaToppingTextField.text);
                          pizzasInOrder.add(newPizza);
                          Navigator.pop(context);
                        });
                      },
                    ),
                  ],
                ),
              )
          );
        }
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
          itemCount: pizzasInOrder.length,
          itemBuilder: (BuildContext context, int position){
            return Card(
              child: ListTile(
                  title: Text(pizzasInOrder[position].description)),

            );
          }
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addPizza,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}


