import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../routes/app_routes.dart';
import '../../routes/routing_controller.dart';
import '../styles/logo.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../styles/text_style.dart';

class MenuTablet extends GetWidget<RoutingController> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Container(
        color: Color.fromRGBO(0, 0, 0, 0.25),
        padding: const EdgeInsets.all(8),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              onPressed: () {
                controller.scrollTo(Routes.home);
              },
              child: Logo(),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  width: (sizingInformation.screenSize.width * 0.7) - 5.0,
                  child: Wrap(
                    alignment: WrapAlignment.end,
                    direction: Axis.horizontal,
                    children: [
                      TextButton(
                        onPressed: () {
                          controller.scrollTo(Routes.aboutUs);
                        },
                        child: Text(
                          'About us',
                          style: textStyleMenu,
                        ),
                      ),
                      SizedBox(width: 15),
                      TextButton(
                        onPressed: () {
                          controller.scrollTo(Routes.products);
                        },
                        child: Text(
                          'Products',
                          style: textStyleMenu,
                        ),
                      ),
                      SizedBox(width: 15),
                      TextButton(
                        onPressed: () {
                          controller.scrollTo(Routes.services);
                        },
                        child: Text(
                          'Services',
                          style: textStyleMenu,
                        ),
                      ),
                      SizedBox(width: 15),
                      TextButton(
                        onPressed: () {
                          controller.scrollTo(Routes.reviews);
                        },
                        child: Text(
                          'Reviews',
                          style: textStyleMenu,
                        ),
                      ),
                      SizedBox(width: 15),
                      TextButton(
                        onPressed: () {
                          controller.scrollTo(Routes.contactUs);
                        },
                        child: Text(
                          'Contact Us',
                          style: textStyleMenu,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
