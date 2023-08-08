import 'package:flutter/material.dart';

class ImageContainer extends StatelessWidget {
  const ImageContainer({super.key, this.links = "copiedLink"});
  final String links;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 80,
      decoration: BoxDecoration(
          image: DecorationImage(image: NetworkImage(links)),
          color: Colors.transparent,
          border: Border.all(width: 5, color: Colors.white.withOpacity(0.9)),
          borderRadius: BorderRadius.circular(10)),
    );
  }
}
