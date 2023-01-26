import 'package:flutter/material.dart';

class Sign_upPage extends StatefulWidget {
  const Sign_upPage({Key? key}) : super(key: key);

  @override
  State<Sign_upPage> createState() => _Sign_upPageState();
}

class _Sign_upPageState extends State<Sign_upPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Material(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20,),
              Image.asset("signup.png",height: 20,width: 20,),
            ],
          ),
        ),
      ),
    );
  }
}
