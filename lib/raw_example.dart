import 'package:flutter/material.dart';

class RawExample extends StatelessWidget {
  const RawExample({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: Container(
        width: size.width,
        height: size.height / 2,
        color: Colors.amber,
        child: const SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          child: Row(
            children: [
              Icon(
                Icons.person,
                size: 60,
              ),
              Icon(
                Icons.person,
                size: 60,
              ),
              Icon(
                Icons.person,
                size: 60,
              ),
              Icon(
                Icons.person,
                size: 60,
              ),
              Icon(
                Icons.person,
                size: 60,
              ),
              Icon(
                Icons.person,
                size: 60,
              ),
              Icon(
                Icons.person,
                size: 60,
              ),
              Icon(
                Icons.person,
                size: 60,
              ),
              Icon(
                Icons.person,
                size: 60,
              ),
            ],
          ),
        ),
      )),
    );
  }
}
