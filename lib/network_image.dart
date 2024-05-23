import 'package:flutter/material.dart';

class NetworkImagePage extends StatelessWidget {
  const NetworkImagePage({super.key});

  @override
  Widget build(BuildContext context) {
    var displaySize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Image.network(
              'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif',
              height: displaySize.height / 3,
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) return child;
                return Container(
                    height: displaySize.height / 3,
                    child: Center(child: LinearProgressIndicator()));
              },
            ),
            // CircularProgressIndicator(),
            // LinearProgressIndicator()
          ],
        ),
      ),
    );
  }
}
