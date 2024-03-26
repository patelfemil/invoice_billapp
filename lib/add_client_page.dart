import 'dart:ui';

import 'package:country_state_city_pro/country_state_city_pro.dart';
import 'package:csc_picker/csc_picker.dart';
import 'package:csc_picker/model/select_status_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:invoice_billapp/controller/clientdetails_controller.dart';
import 'package:invoice_billapp/home_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


ClientController clientController=Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Add Client",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue[900],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 7, vertical: 10),
          child: Column(
            children: [
              userDetails(
                  enterText: 'Enter your Name', labelText: 'First Name'),
              userDetails(
                  enterText: 'Enter your Lastname', labelText: 'Last Name'),
              userDetails(
                  enterText: 'Enter your Email address', labelText: 'Email'),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: IntlPhoneField(
                  dropdownIconPosition: IconPosition.trailing,
                  decoration: InputDecoration(
                    labelText: 'Phone Number',
                    counterText: "",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  initialCountryCode: 'IN',
                  onChanged: (phone) {
                    print(phone.completeNumber);
                  },
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: TextField(
                  obscureText: clientController.passwordVisible,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    hintText: "Password",
                    labelText: "Password",
                    helperStyle: TextStyle(color: Colors.green),
                    suffixIcon: IconButton(
                      icon: Icon(clientController.passwordVisible
                          ? Icons.visibility
                          : Icons.visibility_off),
                      onPressed: () {
                        setState(
                          () {
                            clientController.passwordVisible = !clientController.passwordVisible;
                          },
                        );
                      },
                    ),
                    alignLabelWithHint: false,
                    filled: true,
                  ),
                  keyboardType: TextInputType.visiblePassword,
                  textInputAction: TextInputAction.done,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: TextField(
                  obscureText: clientController.confirmPasswordVisible,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    hintText: "Confirm Password",
                    labelText: "Confirm Password",
                    helperStyle: TextStyle(color: Colors.green),
                    suffixIcon: IconButton(
                      icon: Icon(clientController.confirmPasswordVisible
                          ? Icons.visibility
                          : Icons.visibility_off),
                      onPressed: () {
                        setState(
                          () {
                            clientController.confirmPasswordVisible = !clientController.confirmPasswordVisible;
                          },
                        );
                      },
                    ),
                    alignLabelWithHint: false,
                    filled: true,
                  ),
                  keyboardType: TextInputType.visiblePassword,
                  textInputAction: TextInputAction.done,
                ),
              ),
              userDetails(enterText: 'Enter a Website', labelText: 'Website'),
              userDetails(
                  enterText: 'Enter a Postal Code', labelText: 'Postal Code'),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: CountryStateCityPicker(
                    country: clientController.country,
                    state: clientController.state,
                    city: clientController.city,
                    dialogColor: Colors.grey.shade200,
                    textFieldDecoration: InputDecoration(
                      suffixIcon: Icon(Icons.keyboard_arrow_down),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: InkWell(
        onTap: () {
          Get.to(InstantInvoicePage());
        },
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 8),
          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 18),
          decoration: BoxDecoration(color: Colors.blue[900],borderRadius: BorderRadius.circular(10)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Submit",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w900,fontSize: 16),),
            ],
          ),
        ),
      ),
    );
  }
}

Widget userDetails({required String enterText, required String labelText}) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    child: TextField(
      cursorColor: Colors.black,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: enterText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    ),
  );
}
