import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:invoice_billapp/controller/clientdetails_controller.dart';
import 'controller/widgetcontroller.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  WidgetController widgetController = Get.find();
  ClientController clientController = Get.find();
  GlobalKey<FormState> formKey = GlobalKey();
  FocusNode focusNode = FocusNode();
  String phoneNumber = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Text('Sign up',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    )),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Get control of your business with Bill App',
                  style: TextStyle(
                      fontWeight: FontWeight.w500, color: Colors.black26),
                ),
                SizedBox(
                  height: 50,
                ),
                // IntlPhoneField(
                //   focusNode: focusNode,
                //   validator: (value) {
                //     if (value!.number.length > 11 &&
                //         value!.number.length < 10) {
                //       // Run anything here
                //       return "Please enter valid mobile Number";
                //     }
                //   },
                //
                //   // key: formKey,
                //   // invalidNumberMessage: "Please Enter Valid Mobile Number",
                //   controller: clientController.phoneNumberController,
                //   decoration: InputDecoration(
                //       counterText: '',
                //       labelText: 'Phone Number',
                //       border: OutlineInputBorder(
                //         borderSide: BorderSide(),
                //       ),
                //       errorBorder: OutlineInputBorder(
                //           borderSide: BorderSide(color: Colors.red))),
                //   initialCountryCode: 'IN',
                //   onChanged: (phone) {
                //     print(phone.completeNumber);
                //   },
                // ),
                InternationalPhoneNumberInput(

                  textFieldController: clientController.phoneNumberController,
                  keyboardType: TextInputType.phone,

                  onInputChanged: (PhoneNumber number) {
                    // phoneNumber = number.phoneNumber!;
                  },
                  inputDecoration: InputDecoration(errorText: "",
                    labelText: 'Phone Number',
                  ),
                  selectorConfig: SelectorConfig(
                    selectorType: PhoneInputSelectorType.DIALOG,
                  ),
                  validator: (value){
                    if(value!.isEmpty){
                      return "";
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 50,
                ),
                InkWell(
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      debugPrint("cdsc");
                      clientController.verifyPhoneNumber();
                    } else {
                      clientController.showToast(
                          context, "Enter Mobile Number");
                    }
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
                        Text('Get OTP',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w500)),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 1,
                        color: Color(0xffBDBDBD),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                        child: Text(
                      'Or',
                      style: TextStyle(
                          color: Colors.black45,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    )),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        height: 1,
                        color: Color(0xffBDBDBD),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    clientController.handleSignIn();
                  },
                  child: clientController.isLoad == true
                      ? CircularProgressIndicator()
                      : Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black26,
                                  blurRadius: 1.0,
                                  spreadRadius: 1.0,
                                )
                              ]),
                          child: ListTile(
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 65),
                            leading: Image.asset(
                                "assets/image/google_300221 (1).png",
                                height: 30),
                            title: Text("Login with Google",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
