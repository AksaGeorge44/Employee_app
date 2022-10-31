import 'package:employeeapp/screens/contact.dart';
import 'package:employeeapp/screens/home.dart';
import 'package:employeeapp/screens/profile.dart';
import 'package:flutter/material.dart';

class TabView extends StatelessWidget {
  const TabView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
                tabs: [
                  Tab(text: "home",),
                  Tab(text: "contact",),
                  Tab(text: "profile",),
                ]),


          ),
          body: TabBarView(
              children: [
                Home(),
                Contact(),
                Profile(),
              ]),

        ),

      ),

    );
  }
}
