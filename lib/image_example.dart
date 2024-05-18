import 'package:flutter/material.dart';

class ImageExample extends StatelessWidget {
  const ImageExample({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("Hello world"),
            Container(
              width: 300,
              height: 300,
              color: Colors.amber,
              child: Image.asset('assets/images/101.jpg'),
            )
          ],
        ),
      ),
    );
  }
}
