import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2),
      child: Image.asset('assets/img/whitelabel-logo-rsz.png'),
    );
  }
}
