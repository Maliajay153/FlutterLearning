import 'package:demoforme/main.dart';
import 'package:demoforme/pages/HomePage.dart';
import 'package:flutter/material.dart';


class  Login_page extends StatelessWidget {
  const Login_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
        color: Colors.grey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset("assets/Images/Login_image.png",fit: BoxFit.cover,),

              SizedBox( height : 12),
              Text("Welcome guys",style: TextStyle(fontSize: 25)),
              SizedBox(height: 12,),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 32.0),
                child: Column(
                  children : [
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          label: Text(
                        "Enter Username",
                        style: TextStyle(fontSize: 20),
                      )),
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          label: Text(
                        "Enter password",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      )),
                    ),
                    SizedBox(height: 15),
                    ElevatedButton(

                      style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(side: BorderSide(style:BorderStyle.solid,color: Colors.deepPurple)),
                          minimumSize: Size(120, 45),backgroundColor: Colors.amber),
                        onPressed: () {
                           // Navigator.pushNamed(context, "/HomePage");
                          Navigator.pushNamed(context, "/HomePage");
                        },
                      child: Text("Login",
                      style:TextStyle(color : Colors.deepPurple,fontSize: 20),)),
                    SizedBox(height: 15,),
                    Container(height: 45,width: 200,color: Colors.deepPurple,
                          child: Center(
                              child: Text("Sigh Up",style: TextStyle(fontSize: 30),)),
                    )

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
