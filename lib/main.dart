import 'package:flutter/material.dart';
import 'package:instagram_posts/posts/1st/Elevated_Container.dart';
import 'package:instagram_posts/posts/2nd/Neumorphism_button.dart';
import 'package:instagram_posts/posts/3rd/product_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '_getsetflutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ProductScreen()
    );
  }
}

