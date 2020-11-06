import 'package:dtabs/dtabs.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

// ignore: must_be_immutable
class MyHomePage extends StatelessWidget {
  TabController tabController;
  List<String> tabList = ["Tab 1", "Tab 2", "Tab 3"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("dtabs"),
      ),
      body: Center(
          child: DTabs(
              tabController: tabController, tabList: tabList, currentIndex: 0)),
    );
  }
}
