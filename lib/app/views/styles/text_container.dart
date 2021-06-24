import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'text_style.dart';
import 'package:responsive_builder/responsive_builder.dart';

class TextContainerHeading extends StatelessWidget {
  final String text;
  final TextStyle textStyle;

  const TextContainerHeading(
      {required this.text, this.textStyle = textStyleTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
      ),
      child: SelectableText(
        text,
        style: textStyle,
        textAlign: TextAlign.center,
      ),
    );
  }
}

class TextContainerNormal extends StatelessWidget {
  final String text;
  final TextStyle textStyle;
  final double widthModifier;

  TextContainerNormal({
    required this.text,
    this.textStyle = textStyleNormal,
    this.widthModifier = 1.0,
  });

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Container(
        width: Get.width * widthModifier,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
        ),
        child: SelectableText(
          text,
          style: textStyle,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

class TextContainerNormalAlignLeft extends StatelessWidget {
  final String text;
  final TextStyle textStyle;
  final double widthModifier;

  TextContainerNormalAlignLeft({
    required this.text,
    this.textStyle = textStyleNormalSmaller,
    this.widthModifier = 1.0,
  });

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Container(
        width: Get.width * widthModifier,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
        ),
        child: SelectableText(
          text,
          style: textStyle,
          textAlign: TextAlign.left,
        ),
      ),
    );
  }
}
