import 'package:flutter/material.dart';
import 'package:foode_app/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'NFTS',
      debugShowCheckedModeBanner: false,
     theme: ThemeData.light(),
     darkTheme: ThemeData.dark(),
      home: HomeScreen()
    );
  }
}
