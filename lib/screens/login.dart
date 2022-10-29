import 'package:employeeapp/screens/register.dart';
import 'package:flutter/material.dart';
import 'package:employeeapp/screens/login.dart';




class Loginscreen extends StatelessWidget {
   Loginscreen({Key? key}) : super(key: key);
  TextEditingController uname=TextEditingController();
  TextEditingController password=TextEditingController();


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                SizedBox(height: 20,),
                TextField(
                  controller: uname,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.account_box),
                      labelText: "Uname",
                      hintText: "enter username",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)
                      )
                  ),
                ),
                SizedBox(height: 20,),
                TextField(
                  controller: password,
                  obscureText: true,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      labelText: "Password",
                      hintText: "enter password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)
                      )
                  ),
                ),
                SizedBox(height: 20,),
                SizedBox(
                  child: RaisedButton(onPressed: (){
                    print("hello");
                    var getuname=uname.text;
                    var getpassword=password.text;
                    print(getuname);
                    print(getpassword);

                  },
                    child: Text("Login",
                      style: TextStyle(
                        color: Colors.black,

                      ),
                    ),
                    color: Colors.blue,


                  ),
                ),
                SizedBox(height: 20,),
                RaisedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Register()));


                },

                  child: Text("Go To Register"),
                  color: Colors.blue,
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

