import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:invoice_billapp/business_details.dart';
import 'package:invoice_billapp/home_page.dart';

import 'bhautik_home_page.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 2 ), () {
      Get.to(InstantInvoicePage());
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body:Container(
        padding: EdgeInsets.symmetric(vertical: 150),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // SizedBox(height: 140,),
              Text("Invoice Generator",style: TextStyle(color: Colors.white,fontSize: 14),),
              SizedBox(
                height: 35,
              ),
              Text("Billing App",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 35),),
              SizedBox(height: 35,),
              Text("Generator Invoices Seconds",style: TextStyle(color: Colors.white,fontSize: 14),),
              SizedBox(height: 45,),
              // Center(child: Image.asset("assets/img/invoice.png",height: 200,width: 150,)),
              SizedBox(height: 25,),
              Text("Version 1.0.1",style: TextStyle(color: Colors.white54),)
            ],
          ),
        ),
      ),

    );
  }
}
