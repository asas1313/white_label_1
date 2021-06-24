import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'contact_details.dart';
import 'contact_photo.dart';
import '../widgets/contactus_form.dart';

class ContactUsMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: Get.width,
        child: Column(children: [
          ContactUsForm(),
          SizedBox(height: Get.height / 10),
          ContactDetails(
              fullName: 'Anthony Poullain',
              contacts:
                  'Executive & Board Member\nEmail: anthony@modernit.space\nTel: +370 682 04909'),
          ContactPhoto(image: 'img/contacts/anthony.png'),
          SizedBox(height: 10),
          ContactDetails(
              fullName: 'Andrius Riauba',
              contacts:
                  'Tech.Lead & Board Member\nEmail: andrius@modernit.space\nTel: +370 644 09999'),
          ContactPhoto(image: 'img/contacts/andrius.png'),
          SizedBox(height: 10),
        ]),
      ),
    );
  }
}
