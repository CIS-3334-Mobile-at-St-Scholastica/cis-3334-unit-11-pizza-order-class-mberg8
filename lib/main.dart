import 'package:flutter/material.dart';
import 'package:flutter_pizza_list/pizza.dart';
import 'add_pizzadialog.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Pizza Order'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Pizza> pizzasInOrder = new List();

  _MyHomePageState() {
    //pizzasInOrder[0] = new Pizza("Large", 1);
    //pizzasInOrder.add(new Pizza("Small", 1));
  }

  void _addPizza() {
    final pizzaToppingTextField = TextEditingController();
    int _sizeSelected = 1;
    showDialog(
        context: context,
        builder: (context) {
          return AddPizzaDialog1();

        }
    );
  }





