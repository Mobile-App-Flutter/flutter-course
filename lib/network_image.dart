import 'package:flutter/material.dart';

class NetworkImagePage extends StatelessWidget {
  const NetworkImagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          // physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              CustomNetworkImage(
                ImageUrl:
                    'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif',
              ),
              CustomNetworkImage(
                ImageUrl: 'https://picsum.photos/250?image=9',
              ),
              CustomNetworkImage(
                ImageUrl:
                    'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif',
              ),
              // CustomNetworkImage(displaySize: displaySize),
              // CustomNetworkImage(displaySize: displaySize),
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
    this.ImageUrl,
  });

  final String? ImageUrl;

  @override
  Widget build(BuildContext context) {
    var displaySize = MediaQuery.of(context).size;
    return Image.network(
      ImageUrl!,
      height: displaySize.height / 3,
      loadingBuilder: (context, child, loadingProgress) {
        if (loadingProgress == null) return child;
        return Container(
            height: displaySize.height / 3,
            child: const Center(
                child: Column(
              children: [CircularProgressIndicator(), Text('Hello')],
            )));
      },
    );
  }
}
