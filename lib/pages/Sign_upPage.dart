import 'package:demoforme/pages/Login_page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Sign_upPage extends StatefulWidget {
  const Sign_upPage({Key? key}) : super(key: key);

  @override
  State<Sign_upPage> createState() => _Sign_upPageState();
}

class _Sign_upPageState extends State<Sign_upPage> {
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Material(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20,),
              Image.asset("assets/Images/signup.png",height: 200,width: 200,),
              SizedBox(height: 20,
                child: Text("Welcome to Nav Durga Textile",style: TextStyle(color: Colors.deepPurple,fontSize: 20),),),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 30),
                child: Column(
                  children: [
                    TextFormField(
                      style: TextStyle(fontSize: 20),
                      decoration: InputDecoration(
                        labelText: "Enter First Name",
                            labelStyle: TextStyle(fontSize: 20)
                      ),
                    ),
                    SizedBox(height: 10,),
                    TextFormField(
                      style: TextStyle(fontSize: 20),
                      decoration: InputDecoration(
                          labelText: "Enter Last Name",
                          labelStyle: TextStyle(fontSize:20)
                      ),
                    ),
                    SizedBox(height: 10,),
                    TextFormField(
                      style: TextStyle(fontSize: 20),
                      decoration: InputDecoration(
                          labelText: "Enter Your Email",
                          labelStyle: TextStyle(fontSize:20)
                      ),
                    ),
                    SizedBox(height: 10,),
                    TextFormField(
                      obscureText: true,
                      style: TextStyle(fontSize: 20),
                      decoration: InputDecoration(
                          labelText: "Enter New Password",
                          labelStyle: TextStyle(fontSize:20)
                      ),
                    ),
                    SizedBox(height: 30),
                    Center(
                      child: InkWell(
                        onTap: () async{
                          await Future.delayed(Duration(milliseconds: 300));

                          Navigator.pushNamed(context,"/Login_page");
                        },
                        child: Ink(height: 40,width: 100,
                            decoration: BoxDecoration(color:Colors.green,borderRadius: BorderRadius.circular(6),),
                            child: Center(
                              child: Text("Submit",style: TextStyle(color: Colors.black87,fontSize: 24),),
                            )
                          ),
                        ),
                      ),
                    SizedBox(height: 20,),
                    RichText(text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Already have account?",
                          style: TextStyle(fontSize:20,color: Colors.green),
                      //   recognizer: TapGestureRecognizer()..onTap=(){
                      //   Navigator.pushNamed(context,"/Login_page");
                      //}
                        ),

                        TextSpan(
                            text: "Login",
                            recognizer: TapGestureRecognizer()..onTap=(){
                              Navigator.pushNamed(context,"/Login_page");
                            },
                            style: TextStyle(fontSize: 22,
                                color:Colors.purple),

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
    );
  }
}
