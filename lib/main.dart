import 'package:flutter/material.dart';
import 'package:meat_recipes/screens/intro/recipe_meat_splash_screen.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meat Recipe UI',
      home: const RecipeMeatSplashScreen(),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}
