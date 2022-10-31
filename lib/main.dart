import 'package:employeeapp/screens/drawer.dart';
import 'package:employeeapp/screens/list.dart';
import 'package:employeeapp/screens/register.dart';
import 'package:employeeapp/screens/tabview.dart';
import 'package:employeeapp/screens/view.dart';
import 'package:flutter/material.dart';
import 'package:employeeapp/screens/login.dart';

void main()
{
  runApp(App() );
}
class App extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Emp App"),
        ),
        body:MyDrawer()
      ),
    );
  }
}
