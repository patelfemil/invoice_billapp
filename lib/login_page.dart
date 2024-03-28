import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:invoice_billapp/home_page.dart';

import 'controller/binding_controller.dart';
import 'controller/widgetcontroller.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  bool passwordVisible = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  WidgetController widgetController=Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 15,vertical: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('assets/image/login_bg_img.png',fit: BoxFit.cover,height: 250),
              SizedBox(height: 40,),
              Center(
                child: Text('LOGIN',style: TextStyle(
                  color: Colors.indigo[400],
                  fontSize: 30,fontWeight: FontWeight.bold
                ),),
              ),
              SizedBox(height: 20,),
              widgetController.loginfromfield(
                text: 'User Name',
                suffixIcon: Icon(Icons.person),
              ),
              SizedBox(height: 20,),
              widgetController.loginfromfield(
                text: 'Password',
                obscureText: passwordVisible,
                suffixIcon: IconButton(
                  icon: Icon(
                    passwordVisible
                        ? Icons.visibility
                        : Icons.visibility_off,
                    color: Theme.of(context).primaryColorDark,
                  ),
                  onPressed: () {
                    setState(() {
                      passwordVisible = !passwordVisible;
                    });
                  },
                ),
              ),
              SizedBox(height: 20,),
              widgetController.text(
                text: 'Forgot Password?',
                fontSize: 15.0,
                fontWeight: FontWeight.w500,
                color: Colors.red,
              ),
              SizedBox(height: 20,),
              TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.indigo[400]),
                    padding: MaterialStatePropertyAll(
                      EdgeInsets.symmetric(horizontal: 145,vertical: 15)
                    )
                  ),
                  onPressed: () {
                    Get.to(HomePage(),binding: BindingController());
                  }, child:Text('Login Now',style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),)),
              SizedBox(height: 20,),
              Row(
                children: [
                  Text('New user',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.redAccent),),
                  TextButton(onPressed: () {},
                      child: Text('Signup',style: TextStyle(
                        color: Colors.indigo,
                          fontSize: 15,fontWeight: FontWeight.w500
                      ),),
                  ),
                  Spacer(),
                  Image.asset('assets/image/facebook_11378528.png',height: 35,),
                  SizedBox(width: 15,),
                  Image.asset('assets/image/google_2991148.png',height: 33),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
