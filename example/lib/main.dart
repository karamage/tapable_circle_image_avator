import 'package:flutter/material.dart';
import 'package:tapable_circle_image_avator/tapable_circle_image_avator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  onTap(String tappedId) {
    print("tappedId=$tappedId");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: TapableCircleImageAvator(id: "xfhjkhjef", name: "karamage", onTap: onTap),
        ),
      ),
    );
  }
}
