
import 'package:employeeapp/screens/login.dart';
import 'package:employeeapp/screens/register.dart';
import 'package:flutter/material.dart';


class Register extends StatelessWidget {
  Register({Key? key}) : super(key: key);
  TextEditingController empcode=TextEditingController();
  TextEditingController empname=TextEditingController();
  TextEditingController designation=TextEditingController();
  TextEditingController salary=TextEditingController();
  TextEditingController cmpname=TextEditingController();
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
                  controller: empcode,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.numbers_outlined),
                      labelText: "Empcode",
                      hintText: "enter employee code",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)
                      )
                  ),
                ),
                SizedBox(height: 20,),
                TextField(
                  controller: empname,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.account_box),
                      labelText: "Empname",
                      hintText: "enter employee name",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)
                      )
                  ),
                ),
                SizedBox(height: 20,),
                TextField(controller: designation,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.post_add),
                      labelText: "Designation",
                      hintText: "enter designation",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)
                      )
                  ),),
                SizedBox(height: 20,),
                TextField(controller: salary,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.money),
                      labelText: "Salary",
                      hintText: "enter salary",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)
                      )
                  ),),
                SizedBox(height: 20,),
                TextField(controller: cmpname,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.account_balance_rounded),
                      labelText: "Cmpname",
                      hintText: "enter company name",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)
                      )
                  ),
                ),
                SizedBox(height: 20,),
                SizedBox(
                  child: RaisedButton(onPressed: (){
                    print("hello");
                    var getempcode=empcode.text;
                    var getempname=empname.text;
                    var getdesignation=designation.text;
                    var getsalary=salary.text;
                    var getcmpname=cmpname.text;
                    print(getempcode);
                    print(getempname);
                    print(getdesignation);
                    print(getsalary);
                    print(getcmpname);




                  },
                    child: Text("Submit",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),

                    color: Colors.blue,


                  ),
                ),
                SizedBox(height: 20,),
                RaisedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Loginscreen()));

                },
                  child: Text("Back To Login"),
                  color: Colors.blue,

                )


              ],
            ),
          ),
        ),
      ),
    );
  }
}
