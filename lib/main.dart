import 'package:flutter/material.dart';
import 'package:newapp/screenss/home_screen.dart';
import 'package:newapp/screenss/login_screen.dart';
import 'package:newapp/screenss/signup_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'Login App',
      theme: ThemeData(
        primaryColor: Colors.blueAccent,
      ),
      home: LoginScreen() ,
      routes: {
        SignupScreen.routeName: (ctx)=> SignupScreen(),
        LoginScreen.routeName: (ctx)=> LoginScreen(),
        HomeScreen.routeName: (ctx)=> HomeScreen(),
      },
    );
  }
}
