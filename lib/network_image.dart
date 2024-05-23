import 'package:flutter/material.dart';

class NetworkImagePage extends StatelessWidget {
  const NetworkImagePage({super.key});

  @override
  Widget build(BuildContext context) {
    var displaySize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomNetworkImage(displaySize: displaySize),
              CustomNetworkImage(displaySize: displaySize),
              CustomNetworkImage(displaySize: displaySize),
              CustomNetworkImage(displaySize: displaySize),
              CustomNetworkImage(displaySize: displaySize),
              // CircularProgressIndicator(),
              // LinearProgressIndicator()
            ],
          ),
        ),
      ),
    );
  }
}

class CustomNetworkImage extends StatelessWidget {
  const CustomNetworkImage({
    super.key,
    required this.displaySize,
  });

  final Size displaySize;

  @override
  Widget build(BuildContext context) {
    return Image.network(
      'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif',
      height: displaySize.height / 3,
      loadingBuilder: (context, child, loadingProgress) {
        if (loadingProgress == null) return child;
        return Container(
            height: displaySize.height / 3,
            child: Center(child: LinearProgressIndicator()));
      },
    );
  }
}
