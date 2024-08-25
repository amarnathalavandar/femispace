import 'package:flutter/material.dart';


class FSPictureContainer extends StatelessWidget {
  const FSPictureContainer({
    super.key,
    this.width,
    this.height,
    required this.imageURL,
  });

final double? width;
final double? height;
final String imageURL;


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imageURL),
          fit: BoxFit
              .cover, // Ensure the image covers the entire container
        ),
        borderRadius: BorderRadius.circular(24),
      ),
      width: width,
      height: height,
    );
  }
}
