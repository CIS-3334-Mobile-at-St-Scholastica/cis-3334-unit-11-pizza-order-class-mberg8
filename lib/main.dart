import 'package:flutter/material.dart';
import 'package:flutter_pizza_list/pizza.dart';
import 'add_pizza_dialog.dart';


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

    showDialog(
        context: context,
        builder: (context) {
          return AddPizzaDialog1();
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
          itemBuilder: (BuildContext context, int position) {
            return Card(
                child: ListTile(
                    leading: Icon(Icons.restaurant),
                    title: Text(pizzasInOrder[position].description),
                    onTap: () {
                      print("You tapped on items $position");
                    },

                )
            );
          },

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addPizza,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}


