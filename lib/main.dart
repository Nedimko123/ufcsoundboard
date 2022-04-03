import 'package:flutter/material.dart';
import './soundboard.dart';
//Storing saved list

void main() async {
//Storing saved list
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyAppStart());
}

class MyAppStart extends StatelessWidget {
  const MyAppStart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          colorSchemeSeed: Colors.indigo,
          brightness: Brightness.light,
          useMaterial3: true),
      darkTheme: ThemeData(
          colorSchemeSeed: Colors.red,
          useMaterial3: true,
          brightness: Brightness.dark),
      debugShowCheckedModeBanner: false,
      home: const MyApp(),
    );
  }
}
