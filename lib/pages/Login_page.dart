import 'package:flutter/material.dart';


class  Login_page extends StatelessWidget {
  const Login_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
        color: Colors.grey,
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
                  SizedBox(height: 10),
                  ElevatedButton(
                    style: TextButton.styleFrom(backgroundColor: Colors.amber),
                      onPressed:() {
                        print("hello mali");
                  },
                    child: Text("Login",
                    style:TextStyle(color : Colors.deepPurple,fontSize: 20),))
                ],
              ),
            )
          ],

        ),
      ),
    );
  }
}
