import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:white_label_1/app/views/styles/text_container.dart';
import 'package:white_label_1/app/views/styles/text_style.dart';

class ContactDetails extends StatelessWidget {
  final String fullName;
  final String contacts;

  const ContactDetails({required this.fullName, required this.contacts});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      return Container(
        padding: sizingInformation.deviceScreenType == DeviceScreenType.desktop
            ? EdgeInsets.all(0)
            : EdgeInsets.all(20),
        width: sizingInformation.deviceScreenType == DeviceScreenType.desktop
            ? sizingInformation.screenSize.width * 0.35
            : sizingInformation.deviceScreenType == DeviceScreenType.tablet
                ? (sizingInformation.screenSize.width * 0.7) - 15.0
                : sizingInformation.screenSize.width,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextContainerNormal(
                text: fullName,
                textStyle: textStyleNormalSmallerBold,
              ),
              TextContainerNormal(
                text: contacts,
                textStyle: textStyleNormalSmaller,
              ),
            ]),
      );
    });
  }
}
