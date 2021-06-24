import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../routes/app_routes.dart';
import '../routes/routing_controller.dart';
import 'styles/colors.dart';
import 'styles/text_container.dart';
import 'styles/text_style.dart';
import 'package:responsive_builder/responsive_builder.dart';

class MainView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = Get.find<RoutingController>();
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Container(
        margin: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? EdgeInsets.all(0)
            : EdgeInsets.all(40),
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20),
            width: Get.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextContainerHeading(
                  text:
                      'Progressive Web Application Development\nperformed by an International team',
                ),
                TextContainerNormal(
                  text:
                      'Nowadays, your website is your online vitrine, making sure that you'
                      're visible.\nWhile the world is getting ready for the post pandemic era, all companies from SMEs to large corporation cannot ignore being proactively online anymore.',
                ),
                ConstrainedBox(
                  constraints: BoxConstraints.tightFor(
                    width: 135,
                    height: 50,
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: actionButtonColor),
                    onPressed: () {
                      controller.scrollTo(Routes.aboutUs);
                    },
                    child: Text(
                      'About us',
                      style: textStyleNormalSmaller,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
