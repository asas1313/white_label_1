import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'styles/text_container.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ServicesView extends StatelessWidget {
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
                  text: 'Our process in a glimpse',
                ),
                TextContainerNormal(
                  text:
                      '⦁ Identification of your needs\n  ⦁ We look for suppliers who will match your needs and quality standards',
                ),
                TextContainerNormal(
                  text:
                      '⦁ Solution research\n  ⦁ We present samples for your approval and comments',
                ),
                TextContainerNormal(
                  text:
                      '⦁ Negotiation\n  ⦁ Thanks to our partnership on the Web, we can deliver high end solutions at affordable conditions',
                ),
                TextContainerNormal(
                  text:
                      '⦁ Branding\n  ⦁ Depending on your needs, we can make sure your site will be unique which will deliver a competitive advantage to you and your sales team',
                ),
                TextContainerNormal(
                  text:
                      '⦁ Production and quality follow up\n  ⦁ We provide analytics and statistics to ensure you of what is delivered and how it works',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
