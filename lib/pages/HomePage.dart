import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First demo project",style: TextStyle(color: Colors.greenAccent)),
    ),
      body: Center(
        child: Container(
          child: Text("HellO My dear users",style: TextStyle(color: Colors.deepOrangeAccent)),
        ),
      ),

      drawer: Drawer(

        backgroundColor: Colors.deepPurple,
        child: Column(
          children: [
            SizedBox(height: 50),
            Container(height:150,width: 310, color: Colors.blue,
              child: Column(
                children: [
                  Center(
                    child: Image.asset(height: 100,width: 120,'assets/Images/Login_image.png'),
                  ),
                  SizedBox(height: 20,),
                  Text("Profile is here",style: TextStyle(fontSize: 20),),
                ],
              )

            ),
            Container(height: 80,width: 350,color: Colors.green,
            child: Text("hello everyone my name is mali ajay",style: TextStyle(fontSize: 16),),),
            Container(height: 80,width: 350,color: Colors.red,)
          ],
        ),


      ),
    );
  }
}
