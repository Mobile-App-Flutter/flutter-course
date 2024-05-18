import 'package:flutter/material.dart';

class ColorWidget extends StatelessWidget {
  const ColorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          CustomContainer(color: Colors.amber, text: "Amber box"),
          CustomContainer(color: Colors.red, text: "Red box"),
        ],
      ),
    );
  }
}

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key, required this.color, required this.text});
  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 300,
      margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 50),
      padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 40),
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(20)),
      ),
      child: Text(
        text,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
      transform: Matrix4.rotationZ(0.1), // to rotate
    );
  }
}
