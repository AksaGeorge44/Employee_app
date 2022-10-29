import 'package:flutter/material.dart';

class EmployeeView extends StatefulWidget {
  EmployeeView({Key? key}) : super(key: key);

  @override
  State<EmployeeView> createState() => _EmployeeViewState();
}

class _EmployeeViewState extends State<EmployeeView> {
List names=[];
List codes=[];
List designations=[];
List salarys=[];
List cmpnames=[];
TextEditingController name=TextEditingController();
TextEditingController code=TextEditingController();
TextEditingController designation=TextEditingController();
TextEditingController salary=TextEditingController();
TextEditingController cmpname=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          child: Column(
            children: [
              SizedBox(height: 20,),
              TextField(
                controller: name,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.account_box),
                    labelText: "name",
                    hintText: "enter name",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)
                    )
                ),
              ),
              SizedBox(height: 20,),
              TextField(
                controller: code,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.account_box),
                    labelText: "code",
                    hintText: "enter code",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)
                    )
                ),
              ),
              SizedBox(height: 20,),
              TextField(
                controller: designation,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.account_box),
                    labelText: "designation",
                    hintText: "enter designation",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)
                    )
                ),
              ),
              SizedBox(height: 20,),
              TextField(
                controller: salary,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.account_box),
                    labelText: "salary",
                    hintText: "enter salary",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)
                    )
                ),
              ),
              SizedBox(height: 20,),
              TextField(
                controller: cmpname,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.account_box),
                    labelText: "cmpname",
                    hintText: "enter cmpname",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)
                    )
                ),
              ),
              SizedBox(height: 20,),
              RaisedButton(onPressed: (){
                var getname=name.text;
                var getcode=code.text;
                var getdesignation=designation.text;
                var getsalary=salary.text;
                var getcmpname=cmpname.text;
                this.setState(() {
                  names.add(getname);
                  codes.add(getcode);
                  designations.add(getdesignation);
                  salarys.add(getsalary);
                  cmpnames.add(getcmpname);
                });
                print(getname);

              },

              child: Text("Add"),
                color: Colors.blue,

              ),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: names.length,
                  itemBuilder: (context,index){
                    return Card(
                      child: ListTile(
                        leading: Icon(Icons.account_box),
                        trailing: GestureDetector(
                            onTap: (){
                              this.setState(() {
                                names.removeAt(index);
                              });

                            },

                            child: Icon(Icons.delete,color: Colors.red,)),
                        title: Text(names[index]),
                        subtitle: Text("Code : "+codes[index]+"\n" +"Designation :"+designations[index]+"\n"+"Salary :"+salarys[index]+"\n"+"Cmpname :"+cmpnames[index]),
                      ),
                    );


                  },


              )
            ],
          ),
        ),
      ),
    );
  }
}
