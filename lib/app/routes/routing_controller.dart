import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../views/footer_view.dart';
import '../views/main_view.dart';
import '../views/services_view.dart';
import '../views/reviews_view.dart';
import '../views/products_view.dart';
import '../views/aboutus_view.dart';
import '../views/contact_us/contactus_view.dart';
import '../views/willing_more.dart';

class RoutingController extends GetxController {
  PageController controller = PageController();

  final pages = [
    MainView(),
    AboutusView(),
    ProductsView(),
    ServicesView(),
    WillingMoreView(),
    ReviewsView(),
    ContactUsView(),
    FooterView(),
  ];

  void scrollTo(GlobalKey dataKey) {
    Scrollable.ensureVisible(dataKey.currentContext!);
  }
}
