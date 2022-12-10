import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  Homepage({Key? key}) : super(key: key);
  String id = 'homepage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('home'),
      ),
      body: Column(),
    );
  }
}
