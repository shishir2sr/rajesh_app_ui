import 'package:flutter/material.dart';

import 'package:rajesh_ui/widgets/test_info_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, snapshot) {
                return const TestInfoWidget();
              }),
        ),
      ),
    );
  }
}
