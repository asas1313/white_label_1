import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'styles/text_container.dart';

class ReviewsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Container(
        margin: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? EdgeInsets.all(0)
            : EdgeInsets.all(40),
        child: SingleChildScrollView(
          child: Container(
            width: Get.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextContainerHeading(
                  text: 'Reviews',
                ),
                TextContainerNormal(
                  text:
                      '“Thanks to Your company, I’ve been able to many things at a competitive price and with his partners, we were able to reduce our after sales service issues by 36% the first month” – Mr. or Mrs. selling something',
                ),
                TextContainerNormal(
                  text:
                      '“I tried several agents in Web claiming to perform before contacting You. I’ve been impressed by your way to manage issues and the efficiency of your network. I highly recommend using these services” – Mr. E. selling something different',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
