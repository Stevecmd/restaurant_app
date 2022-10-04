import 'package:flutter/material.dart';
import 'package:restaurant_app/Home.dart';
import './loginPage.dart';

void main() => runApp(LoginUI());

class LoginUI extends StatelessWidget {
  const LoginUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Jays Jikoni",
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Welcome!",
          ),
        ),
        body: const LoginScreen(),
      ),
      routes: <String, WidgetBuilder> {
        '/screen1': (BuildContext context) => new HomeScreen(),
        '/screen2' : (BuildContext context) => new HomeScreen(),
        '/screen3' : (BuildContext context) => new HomeScreen(),
        '/screen4' : (BuildContext context) => new HomeScreen()
      },
    );
  }
}