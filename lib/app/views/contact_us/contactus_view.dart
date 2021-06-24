import 'package:flutter/material.dart';
import 'package:white_label_1/app/views/contact_us/contact_us_desktop.dart';
import 'package:white_label_1/app/views/contact_us/contact_us_tablet.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'contact_us_mobile.dart';

class ContactUsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Container(
        margin: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? EdgeInsets.all(0)
            : EdgeInsets.all(40),
        child: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? ContactUsMobile()
            : sizingInformation.deviceScreenType == DeviceScreenType.tablet
                ? ContactUsTablet()
                : ContactUsDesktop(),
      ),
    );
  }
}
