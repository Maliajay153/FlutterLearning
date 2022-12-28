import 'package:flutter/material.dart';

class  Login_page extends StatelessWidget {
  const Login_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Material(
          child: Center(
            child: Text("Login Page",style: TextStyle(
                  fontSize: 30,
              ),
           ),
          )
        )

    );
  }
}
