import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'styles/text_container.dart';
import 'styles/text_style.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:responsive_grid/responsive_grid.dart';

class AboutusView extends StatelessWidget {
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
                  text: 'Our company offers the following services:',
                ),
                TextContainerNormal(
                  text:
                      'Nowadays, your website is your online vitrine, making sure that you'
                      're visible.\nWhile the world is getting ready for the post pandemic era, all companies from SMEs to large corporation cannot ignore being proactively online anymore.',
                ),
                ResponsiveGridRow(children: [
                  ResponsiveGridCol(
                    lg: 4,
                    md: 6,
                    sm: 12,
                    child: Container(
                      alignment: Alignment(0, 0),
                      child: Column(
                        children: [
                          TextContainerNormalAlignLeft(
                            text: 'Applications development',
                            textStyle: textStyleSubtitle,
                          ),
                          TextContainerNormalAlignLeft(
                              text:
                                  'compatible with all most commonly used operating systems for desktop and mobile'),
                        ],
                      ),
                    ),
                  ),
                  ResponsiveGridCol(
                    lg: 4,
                    md: 6,
                    sm: 12,
                    child: Container(
                      alignment: Alignment(0, 0),
                      child: Column(
                        children: [
                          TextContainerNormalAlignLeft(
                            text: 'Website development',
                            textStyle: textStyleSubtitle,
                          ),
                          TextContainerNormalAlignLeft(
                              text: 'using a CMS or built from scratch'),
                        ],
                      ),
                    ),
                  ),
                  ResponsiveGridCol(
                    lg: 4,
                    md: 6,
                    sm: 12,
                    child: Container(
                      alignment: Alignment(0, 0),
                      child: Column(
                        children: [
                          TextContainerNormalAlignLeft(
                            text: 'Business Consulting',
                            textStyle: textStyleSubtitle,
                          ),
                          TextContainerNormalAlignLeft(
                              text: 'related to NCITs'),
                        ],
                      ),
                    ),
                  ),
                  ResponsiveGridCol(
                    lg: 4,
                    md: 6,
                    sm: 12,
                    child: Container(
                      alignment: Alignment(0, 0),
                      child: Column(
                        children: [
                          TextContainerNormalAlignLeft(
                            text: 'Project management',
                            textStyle: textStyleSubtitle,
                          ),
                          TextContainerNormalAlignLeft(
                              text:
                                  'consulting or managing IT related projects'),
                        ],
                      ),
                    ),
                  ),
                ])
              ],
            ),
          ),
        ),
      ),
    );
  }
}
