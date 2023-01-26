
import 'package:flutter/material.dart';


class  Login_page extends StatefulWidget {
  const Login_page({Key? key}) : super(key: key);

  @override
  State<Login_page> createState() => _Login_pageState();
}

class _Login_pageState extends State<Login_page> {
  @override
  String name = "";
  bool changeButton = false;
  Widget build(BuildContext context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
      home: Material(
        color: Colors.grey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset("assets/Images/Login_image.png",fit: BoxFit.cover,),

              SizedBox( height : 12),
              Text("Welcome $name",style: TextStyle(fontSize: 25)),
              SizedBox(height: 12,),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 32.0),
                child: Column(
                  children : [
                    TextFormField(
                      decoration: InputDecoration(
                          label: Text(
                        "Enter Username",
                        style: TextStyle(fontSize: 20),
                      )),
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
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
                      clipBehavior: Clip.hardEdge,
                      style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(side: BorderSide(style:BorderStyle.solid,color: Colors.deepPurple)),
                          minimumSize: Size(120, 45),backgroundColor: Colors.amber),
                        onPressed: () {
                          Navigator.pushNamed(context, "/HomePage");
                        },
                      child: Text("Login",
                      style:TextStyle(color : Colors.deepPurple,fontSize: 20),)),
                    SizedBox(height: 15,),
                    InkWell(
                      onTap: () async {
                        setState(() {
                          if(changeButton == true)
                            changeButton = false;
                          else
                            changeButton = true;
                        });
                        await Future.delayed(Duration(seconds : 1));
                        Navigator.pushNamed(context, "/Sign_upPage");
                      },

                      child : AnimatedContainer(height: 45,width: 150,
                              alignment: Alignment.center,
                              child: Text("Sigh Up",style: TextStyle(fontSize: 30),),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(6),
                      color: changeButton? Colors.deepPurple:Colors.green,
                        ), duration: Duration(seconds: 1),
                      ),
                    ),
                    SizedBox(height: 100,),
                    SizedBox(height: 100,
                    child: Text("Have a nice day $name",style: TextStyle(fontSize:28,color: changeButton ?Colors.deepPurple:Colors.blue),),)

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
