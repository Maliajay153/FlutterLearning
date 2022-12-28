import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First demo project"),
      ),
      body: Center(
        child: Container(
          child: Text("Helo india"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
