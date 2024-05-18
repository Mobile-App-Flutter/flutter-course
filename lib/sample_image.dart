import 'package:flutter/material.dart';

class SampleImage extends StatelessWidget {
  const SampleImage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Hello "),
            // SizedBox(height: 20),
            Container(
              width: 250,
              height: 180,
              padding: EdgeInsets.all(10),
              child: Image.asset(
                "assets/images/101.jpg",
                fit: BoxFit.cover, // fit image to the container 
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}
