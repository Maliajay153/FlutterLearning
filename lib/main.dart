import 'package:flutter/material.dart';
import 'pages/Login_page.dart';
import 'pages/HomePage.dart';

void main() {
  runApp(MyApp());
  HomePage homePage = new HomePage();
}
class  MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home:HomePage(),
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      theme: ThemeData(primarySwatch: Colors.cyan),
      darkTheme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.deepPurple,
      ),
      initialRoute: "/",
      routes: {
        "/" : (context) => Login_page(),
        "/HomePage": (context )=> HomePage()
      },

      );
  }
}


