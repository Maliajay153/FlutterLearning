import 'package:flutter/material.dart';
import 'pages/Login_page.dart';
import 'pages/HomePage.dart';

void main() {
  runApp(MyApp());
}
class  MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home:HomePage(),
      themeMode: ThemeMode.dark,
      theme: ThemeData(primarySwatch: Colors.cyan),
      darkTheme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.lime,
      ),
      initialRoute: "/HomePage",
      routes: {
        "/" : (context) => Login_page(),
        "/HomePage": (context )=> HomePage()
      },

      );
  }
}


