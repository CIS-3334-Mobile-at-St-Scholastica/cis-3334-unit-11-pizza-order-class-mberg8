import 'package:flutter/material.dart';
import 'pizza.dart';


class AddPizzaDialog1 extends StatefulWidget {
  List<Pizza> pizzasInOrder;

  _AddPizzaDialog1State createState() => _AddPizzaDialog1State();
}

class AddPizzaDialog1State extends State<AddPizzaDialog1> {

    final pizzaToppingTextField = TextEditingController();
    int _sizeSelected = 1;
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
