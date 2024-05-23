import 'package:flutter/material.dart';

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
