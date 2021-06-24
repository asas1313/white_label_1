import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'app/views/home_page/home_page.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'app/routes/routing_controller.dart';

void main() {
  Get.put(RoutingController());
  runApp(
    GetMaterialApp(
      builder: (context, widget) => ResponsiveWrapper.builder(
        widget,
        maxWidth: 2400,
        minWidth: 480,
        defaultScale: true,
        breakpoints: [
          ResponsiveBreakpoint.resize(480, name: MOBILE),
          ResponsiveBreakpoint.autoScale(800, name: TABLET),
          ResponsiveBreakpoint.resize(1000, name: DESKTOP),
        ],
      ),
      debugShowCheckedModeBanner: false,
      title: "Application",
      defaultTransition: Transition.leftToRightWithFade,
      home: HomePage(),
    ),
  );
}
