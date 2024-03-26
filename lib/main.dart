import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:invoice_billapp/controller/binding_controller.dart';
import 'package:invoice_billapp/splash.dart';

import 'home_page.dart';

void main() {
  runApp(const InvoiceApp());
}

class InvoiceApp extends StatelessWidget {
  const InvoiceApp();

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: BindingController(),
      home: Splash(),
    );
  }
}

