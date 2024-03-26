import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ClientController extends GetxController{
  final TextEditingController country = TextEditingController();
  final TextEditingController state = TextEditingController();
  final TextEditingController city = TextEditingController();

  String countryValue = "";
  String stateValue = "";
  String cityValue = "";
  String address = "";

  bool passwordVisible = false;
  bool confirmPasswordVisible = false;
}