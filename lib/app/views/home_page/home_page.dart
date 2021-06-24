import 'package:flutter/material.dart';

import 'package:get/get.dart';
import '../../routes/app_routes.dart';
import '../../routes/routing_controller.dart';
import 'menu.dart';
import 'navigation_drawer.dart';
import '../styles/background_decoration.dart';
import '../styles/colors.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomePage extends GetWidget<RoutingController> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? NavigationDrawer()
            : null,
        backgroundColor: backgroundColor,
        body: Container(
          decoration: backgroundDecoration,
          child: Column(
            children: <Widget>[
              Menu(),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Card(
                        key: Routes.home,
                        child: controller.pages[0],
                        color: backgroundColor.withOpacity(0.5),
                      ),
                      Card(
                        key: Routes.aboutUs,
                        child: controller.pages[1],
                        color: backgroundColor.withOpacity(0.5),
                      ),
                      Card(
                        key: Routes.products,
                        child: controller.pages[2],
                        color: backgroundColor.withOpacity(0.5),
                      ),
                      Card(
                        key: Routes.services,
                        child: controller.pages[3],
                        color: backgroundColor.withOpacity(0.5),
                      ),
                      Card(
                        key: Routes.willingMore,
                        child: controller.pages[4],
                        color: backgroundColor.withOpacity(0.5),
                      ),
                      Card(
                        key: Routes.reviews,
                        child: controller.pages[5],
                        color: backgroundColor.withOpacity(0.5),
                      ),
                      Card(
                        key: Routes.contactUs,
                        child: controller.pages[6],
                        color: backgroundColor.withOpacity(0.5),
                      ),
                      Card(
                        key: Routes.footer,
                        child: controller.pages[7],
                        color: backgroundColor.withOpacity(0.5),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
