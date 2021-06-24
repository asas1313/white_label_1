import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../styles/colors.dart';
import '../styles/text_container.dart';
import '../styles/text_style.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ContactUsForm extends StatelessWidget {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final questionController = TextEditingController();
  final messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Container(
        margin: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? EdgeInsets.all(0)
            : EdgeInsets.all(40),
        child: Container(
          padding: EdgeInsets.all(20),
          width: sizingInformation.deviceScreenType != DeviceScreenType.desktop
              ? sizingInformation.screenSize.width
              : sizingInformation.screenSize.width * 0.35,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 25),
              TextContainerNormal(text: 'Message Form'),
              TextFormField(
                controller: nameController,
                decoration: InputDecoration(
                    labelText: 'Name: ',
                    labelStyle: TextStyle(color: Colors.white)),
                style: TextStyle(color: Colors.white),
              ),
              TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                    labelText: 'E-mail: ',
                    labelStyle: TextStyle(color: Colors.white)),
                style: TextStyle(color: Colors.white),
              ),
              TextFormField(
                controller: questionController,
                decoration: InputDecoration(
                    labelText: 'Question: ',
                    labelStyle: TextStyle(color: Colors.white)),
                style: TextStyle(color: Colors.white),
              ),
              TextFormField(
                maxLines: 5,
                controller: messageController,
                decoration: InputDecoration(
                    labelText: 'Message: ',
                    labelStyle: TextStyle(color: Colors.white)),
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(height: 25),
              ConstrainedBox(
                constraints: BoxConstraints.tightFor(
                  width: 135,
                  height: 50,
                ),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: actionButtonColor),
                    onPressed: () => sendMessage(),
                    child: Text(
                      'SUBMIT',
                      style: textStyleNormalSmaller,
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }

  void sendMessage() {
    if (!emailController.text.isEmail ||
        (questionController.text.isEmpty && messageController.text.isEmpty)) {
      Get.snackbar(
        'Error',
        'Please provide your e-mail and question or message!',
        backgroundColor: Colors.red,
      );
      return null;
    }
    FirebaseFirestore.instance.collection('mail').add({
      'to': 'andrius@modernit.space',
      'message': {
        'from': emailController.text,
        'subject':
            nameController.text + ' sent a message for You from Whi Label 1',
        'html': 'Name: ' +
            nameController.text +
            '.<br/>E-mail: ' +
            emailController.text +
            '.<br/>Question: ' +
            questionController.text +
            '.<br/>Message: ' +
            messageController.text,
      },
    }).then((value) {
      Get.snackbar('Information', 'Message sent.');
      emailController.text = '';
      nameController.text = '';
      questionController.text = '';
      messageController.text = '';
    }).catchError((error) {
      print("Failed to save email: $error");
    });
    Get.back();
  }
}
