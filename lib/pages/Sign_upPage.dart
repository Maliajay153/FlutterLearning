import 'package:demoforme/Models/UserModel.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'Database_db.dart';


class Sign_upPage extends StatefulWidget {
  const Sign_upPage({Key? key}) : super(key: key);

  @override
  State<Sign_upPage> createState() => _Sign_upPageState();
}

class _Sign_upPageState extends State<Sign_upPage> {
  bool changeButton = false;
  final conUserFname = TextEditingController();
  final conUserLname = TextEditingController();
  final conUserEmail = TextEditingController();
  final conUserPass = TextEditingController();
  final formkey = GlobalKey<FormState>();
  var dbHelper ;
   void initState(){
     super.initState();
     dbHelper = Database_db();
   }
  void validator() {
    String ufname = conUserFname.text;
    String ulname = conUserFname.text;
    String uemail = conUserFname.text;
    String upass = conUserFname.text;
    if (formkey.currentState!.validate()) {
      setState(() {

      });
      Navigator.pushNamed(context, "/Login_page");
      formkey.currentState?.save();
      UserModel umodel = UserModel(Database_db.u_fname, Database_db.u_lname, Database_db.u_email, Database_db.u_pass);
      dbHelper.saveData(umodel);

    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Material(
          child: SingleChildScrollView(
            child: Form(
              key: formkey,
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  Image.asset(
                    "assets/Images/signup.png", height: 150, width: 200,),
                  SizedBox(height: 20,
                    child: Text("Welcome to Nav Durga Textile",
                      style: TextStyle(
                          color: Colors.deepPurple, fontSize: 20),),),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 30),
                    child: Column(
                      children: [
                        TextFormField(
                          controller: conUserFname,

                          style: TextStyle(fontSize: 20),
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: "Enter First Name",
                              labelStyle: TextStyle(fontSize: 20)
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return ("First Name is Compulsory");
                            }
                            else {
                              return null;
                            }
                          },
                          onSaved: (value) {
                            conUserFname.text = value!;
                          },
                        ),
                        SizedBox(height: 15,),
                        TextFormField(
                        controller: conUserLname,
                          style: TextStyle(fontSize: 20),
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: "Enter Last Name",
                              labelStyle: TextStyle(fontSize: 20)
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return ("Last Name is Compulsory");
                            }
                            else {
                              return null;
                            }
                          },
                          onSaved: (value) {
                            conUserLname.text = value!;
                          },
                        ),
                        SizedBox(height: 15,),
                        TextFormField(
                          controller: conUserEmail,
                          style: TextStyle(fontSize: 20),
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: "Enter Your Email",
                              labelStyle: TextStyle(fontSize: 20)
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return ("Email is Compulsory");
                            }
                            else {
                              return null;
                            }
                          },
                          onSaved: (value) {
                            conUserEmail.text = value!;
                          },
                        ),
                        SizedBox(height: 15,),
                        TextFormField(
                          controller: conUserPass,
                          obscureText: true,
                          style: TextStyle(fontSize: 20),
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: "Enter New Password",
                              labelStyle: TextStyle(fontSize: 20)
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return ("Password is Compulsory");
                            }
                            else if (value.length < 8) {
                              return "Password should be atleast 8 letter";
                            }
                            else {
                              return null;
                            }
                          },
                          onSaved: (value) {
                            conUserPass.text = value!;
                          },
                        ),
                        SizedBox(height: 15,),
                        SizedBox(height: 20,),
                        Center(
                          child: ElevatedButton(
                              clipBehavior: Clip.hardEdge,
                              style: TextButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      side: BorderSide(style: BorderStyle.solid,
                                          color: Colors.deepPurple)),
                                  minimumSize: Size(120, 45),
                                  backgroundColor: Colors.amber),
                              onPressed: () {
                                validator();
                                SignUp();
                              },
                              child: Text("Submit",
                                style: TextStyle(
                                    color: Colors.deepPurple, fontSize: 28),)),
                        ),
                        SizedBox(height: 20,),
                        RichText(text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Already have account?",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.green),
                                //   recognizer: TapGestureRecognizer()..onTap=(){
                                //   Navigator.pushNamed(context,"/Login_page");
                                //}
                              ),

                              TextSpan(
                                text: "Login",
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.pushNamed(context, "/Login_page");
                                  },
                                style: TextStyle(fontSize: 22,
                                    color: Colors.purple),

                              )

                            ]
                        ),)
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
