
import 'package:employeeapp/screens/contact.dart';
import 'package:employeeapp/screens/home.dart';
import 'package:employeeapp/screens/profile.dart';
import 'package:flutter/material.dart';
class EmployeeList extends StatefulWidget {
  const EmployeeList({Key? key}) : super(key: key);

  @override
  State<EmployeeList> createState() => _EmployeeListState();
}

class _EmployeeListState extends State<EmployeeList> {
  int _currentindex=0;
  List mypages=[Home(),Contact(),Profile()];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:mypages[_currentindex],
        bottomNavigationBar: BottomNavigationBar(
            onTap: (index){
              this.setState(() {
                _currentindex=index;
              });
            },
            currentIndex: _currentindex,
            items: [
              BottomNavigationBarItem(
                  label: "home",
                  icon: Icon(Icons.account_box_outlined)),
              BottomNavigationBarItem(
                  label: "contact",
                  icon: Icon(Icons.account_box)),
              BottomNavigationBarItem(
                  label: "profile",
                  icon: Icon(Icons.account_box_outlined))
            ]),
      ),
    );
  }
}
