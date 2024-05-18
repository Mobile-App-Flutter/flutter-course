import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var size= MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('First-App'),
        backgroundColor: Colors.amber,
      ),
      body: Container(

      ),
    );
  }
}