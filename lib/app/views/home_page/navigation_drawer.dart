import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../routes/app_routes.dart';
import '../../routes/routing_controller.dart';
import '../styles/logo.dart';
import '../styles/text_style.dart';

class NavigationDrawer extends GetWidget<RoutingController> {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            color: Color.fromRGBO(0, 0, 0, 0.25),
            padding: const EdgeInsets.all(32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextButton(
                  onPressed: () {
                    controller.scrollTo(Routes.home);
                  },
                  child: Logo(),
                ),
                SizedBox(height: 27),
                TextButton(
                  onPressed: () {
                    controller.scrollTo(Routes.aboutUs);
                  },
                  child: Text(
                    'About us',
                    style: textStyleMenu,
                  ),
                ),
                SizedBox(height: 27),
                TextButton(
                  onPressed: () {
                    controller.scrollTo(Routes.products);
                  },
                  child: Text(
                    'Products',
                    style: textStyleMenu,
                  ),
                ),
                SizedBox(height: 27),
                TextButton(
                  onPressed: () {
                    controller.scrollTo(Routes.services);
                  },
                  child: Text(
                    'Services',
                    style: textStyleMenu,
                  ),
                ),
                SizedBox(height: 27),
                TextButton(
                  onPressed: () {
                    controller.scrollTo(Routes.reviews);
                  },
                  child: Text(
                    'Reviews',
                    style: textStyleMenu,
                  ),
                ),
                SizedBox(height: 27),
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
    );
  }
}
