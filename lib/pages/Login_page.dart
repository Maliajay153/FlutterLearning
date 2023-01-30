
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'Database_db.dart';
import 'DbHelper.dart';


class  Login_page extends StatefulWidget {
  const Login_page({Key? key}) : super(key: key);

  @override
  State<Login_page> createState() => _Login_pageState();
}

class _Login_pageState extends State<Login_page> {
  @override
  String name = "";
  final conUserEmail = TextEditingController();
  final conUserPass = TextEditingController();
  final formkey = GlobalKey<FormState>();
  var dbHelper ;
    void initState(){
      dbHelper = Database_db();
    }
  void validator(){
    if(formkey.currentState!.validate()){
      Navigator.pushNamed(context,"/HomePage");
    }
  }
  bool changeButton = false;
  Widget build(BuildContext context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Material(
          color: Colors.grey,
          child: SingleChildScrollView(
            child: Form(
              key: formkey,
              child: Column(
                children: [
                  Image.asset("assets/Images/Login_image.png",fit: BoxFit.cover,),

                  SizedBox( height : 7),
                  Text("Welcome $name",style: TextStyle(fontSize: 25)),
                  SizedBox(height: 7,),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 32.0),
                    child: Column(
                      children : [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical:20,horizontal: 0),
                          child: Column(
                            children: [
                              TextFormField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                    label: Text(
                                  "Enter Username",
                                  style: TextStyle(fontSize: 20),
                                )),
                                validator: (value) {
                                  if(value!.isEmpty){
                                    return("Email is compulsory");
                                  }
                                  else{
                                    return(null);
                                  }
                                },
                                onChanged: (value) {
                                  name = value;
                                  setState(() {});
                                },
                              ),
                              SizedBox(height: 30,),
                              TextFormField(
                                obscureText: true,
                                  validator: (value) {
                                    if(value!.isEmpty){
                                      return("Password is compulsory");
                                    }
                                    else if(value.length<8){
                                      return "Password should be atleast 8 letter";
                                    }
                                    else{
                                      return(null);
                                    }
                                  },
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                    label: Text(
                                  "Enter password",
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),

                                )),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 8),
                        ElevatedButton(
                          clipBehavior: Clip.hardEdge,
                          style: TextButton.styleFrom(
                              shape: RoundedRectangleBorder(side: BorderSide(style:BorderStyle.solid,color: Colors.deepPurple)),
                              minimumSize: Size(120, 45),backgroundColor: Colors.amber),
                            onPressed:()=> validator(),
                          child: Text("Login",
                          style:TextStyle(color : Colors.deepPurple,fontSize: 28),)),
                        SizedBox(height: 15,),
                        RichText(text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Have no account?",
                                style: TextStyle(fontSize:20,color: Colors.greenAccent),
                                //   recognizer: TapGestureRecognizer()..onTap=(){
                                //   Navigator.pushNamed(context,"/Login_page");
                                //}
                              ),

                              TextSpan(
                                text: "Register",
                                recognizer: TapGestureRecognizer()..onTap=(){
                                  setState(() {
                                    if(changeButton == true)
                                            changeButton = false;
                                          else
                                            changeButton = true;
                                  });
                                  Navigator.pushNamed(context,"/Sign_upPage");
                                },
                                style: TextStyle(fontSize: 22,
                                    color:Colors.black87),

                              )

                            ]
                        ),),
                        // InkWell(
                        //   onTap: () async {
                        //     setState(() {
                        //       if(changeButton == true)
                        //         changeButton = false;
                        //       else
                        //         changeButton = true;
                        //     });
                        //     await Future.delayed(Duration(milliseconds: 400));
                        //     Navigator.pushNamed(context, "/Sign_upPage");
                        //   },
                        //
                        //   child : Ink(height: 45,width: 150,
                        //           child: Center( child: Text("Register",style: TextStyle(color:Colors.limeAccent,fontSize: 28),),),
                        //   decoration: BoxDecoration(
                        //     borderRadius: BorderRadius.circular(6),
                        //     ),
                        //   ),
                        // ),
                        SizedBox(height: 30,),
                        SizedBox(height: 100,
                        child: Text("Have a nice day $name",
                          style: TextStyle(fontSize:28,
                              color: changeButton ?Colors.deepPurple:Colors.blue),
                        ),
                        )

                       ],
                    ),
                  )
                ],

              ),
            ),
          ),
        ),
      ),
    );
  }
}
