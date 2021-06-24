import 'package:flutter/material.dart';

class ContactPhoto extends StatelessWidget {
  final String image;
  final double height;
  final double width;

  const ContactPhoto(
      {required this.image, this.height = 100, this.width = 100});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2),
      child: Image.asset(
        image,
        height: height,
        width: width,
        fit: BoxFit.fitHeight,
      ),
    );
  }
}
