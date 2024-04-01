import 'package:flutter/material.dart';
import 'package:get/get.dart';


class WidgetController extends GetxController{
Widget textformfield({text,int,}){
  return TextFormField(
    maxLines: int,
    decoration: InputDecoration(
      hintText: text,
          border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10)))
    ),
  );
}
Widget text({text,fontSize,fontWeight,color}){
  return Text(
    text,style: TextStyle(fontSize: fontSize,fontWeight:fontWeight,color:color),
  );
}
Widget loginfromfield({text,suffixIcon,obscureText}){
  return TextFormField(
    obscureText: obscureText??false,
    decoration: InputDecoration(
        suffixIcon: suffixIcon,
        hintText: text,
        border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10)))
    ),
  );
}




}

