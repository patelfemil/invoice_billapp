import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:invoice_billapp/controller/clientdetails_controller.dart';

import 'controller/widgetcontroller.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({super.key});

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  WidgetController widgetController = Get.find();
  ClientController clientController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
            splashRadius: 25,
            onPressed: () {
              Get.back();
            },
            icon: Icon(Icons.arrow_back),
            color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              Text(
                'Verifying OTP',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
              Row(
                children: [
                  Text('OTP sent to +91971892847',
                      style: TextStyle(fontSize: 15, color: Colors.black45)),
                  TextButton(

                      onPressed: () {},
                      child: Text(
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                              color: Colors.indigo),
                          'Change?')),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              TextField(controller: clientController.otpController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  hintText: 'Enter OTP Code',
                ),
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'Resend OTP',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: Colors.indigo),
                  )),
              SizedBox(
                height: 25,
              ),
              InkWell(
                onTap: () {
                  clientController.signInWithPhoneNumber();
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  decoration: BoxDecoration(
                    color: Colors.indigo,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Submit OTP',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500)),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 1.0,
                        spreadRadius: 1.0,
                      )
                    ]),
                child: ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 65),
                  leading: Image.asset("assets/image/google_300221 (1).png",
                      height: 30),
                  title: Text("Login with Google",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
