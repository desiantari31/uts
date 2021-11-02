import 'package:flutter/material.dart';
import 'package:latihan_app/UI/widget/buttomBar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Home';

    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: Text(appTitle),
        ),
        body: Center(
          child: Text('Home Page'),
        ),
        bottomNavigationBar: buildBottomBar(0, context),
      ),
    );
  }
}
