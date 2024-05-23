import 'package:flutter/material.dart';
import 'package:mobile_app/components/custom_network_image.dart';

class NetworkImagePage extends StatelessWidget {
  const NetworkImagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: const SingleChildScrollView(
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
