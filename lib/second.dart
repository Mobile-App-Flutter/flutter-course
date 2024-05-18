import 'package:flutter/material.dart';

class TemplateWidegt extends StatelessWidget {
  const TemplateWidegt({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            // select the container and then extract_widget (use shift key for select full container)
            height: 150,
            width: 300,
            margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 50),
            padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 40),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius:
                  const BorderRadius.only(bottomLeft: Radius.circular(20)),
            ),
            child: Text(
              "test",
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            transform: Matrix4.rotationZ(0.1),
          )
        ],
      ),
    );
  }
}
