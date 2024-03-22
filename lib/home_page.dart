import 'package:country_state_city_pro/country_state_city_pro.dart';
import 'package:csc_picker/csc_picker.dart';
import 'package:csc_picker/model/select_status_model.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final TextEditingController country = TextEditingController();
  final TextEditingController state = TextEditingController();
  final TextEditingController city = TextEditingController();

  String countryValue = "";
  String stateValue = "";
  String cityValue = "";
  String address = "";

  bool passwordVisible=false;
  bool confirmPasswordVisible=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
           userDetails(enterText: 'Enter your Name', labelText: 'First Name'),
           userDetails(enterText: 'Enter your Lastname', labelText: 'Last Name'),
           userDetails(enterText: 'Enter your Email address', labelText: 'Email'),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
            child:
            TextField(

              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Phone Number",
                // prefix:  CountryPickerDropdown(
                //   initialValue: 'in',
                //   itemBuilder: _buildDropdownItem,
                //   onValuePicked: (Country country) {
                //     print("${country.name}");
                //   },
                // ),
              ),
              onChanged: (value){
                // this.phoneNo=value;
              },

            ),

          ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),

              child: TextField(
                obscureText: passwordVisible,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  hintText: "Password",
                  labelText: "Password",
                  helperStyle:TextStyle(color:Colors.green),
                  suffixIcon: IconButton(
                    icon: Icon(passwordVisible
                        ? Icons.visibility
                        : Icons.visibility_off),
                    onPressed: () {
                      setState(
                            () {
                          passwordVisible = !passwordVisible;
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
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              child: TextField(
                obscureText: confirmPasswordVisible,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  hintText: "Confirm Password",
                  labelText: "Confirm Password",
                  helperStyle:TextStyle(color:Colors.green),
                  suffixIcon: IconButton(
                    icon: Icon(confirmPasswordVisible
                        ? Icons.visibility
                        : Icons.visibility_off),
                    onPressed: () {
                      setState(
                            () {
                              confirmPasswordVisible = !confirmPasswordVisible;
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
           userDetails(enterText: 'Enter a Postal Code', labelText: 'Postal Code'),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              child: CountryStateCityPicker(
                  country: country,
                  state: state,
                  city: city,
                  dialogColor: Colors.grey.shade200,
                  textFieldDecoration: InputDecoration(
                      suffixIcon: Icon(Icons.keyboard_arrow_down),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  )
              ),
            ),
          ],
        ),
      ),
    );
  }
}

 
Widget userDetails({required String enterText, required String labelText}) {
  return  Container(
    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
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

// Widget _buildDropdownItem(Country country) => Container(
//   child: Row(
//     children: <Widget>[
//       // CountryPickerUtils.getDefaultFlagImage(country),
//       SizedBox(
//         width: 8.0,
//       ),
//       Text("+${country.phoneCode}(${country.isoCode})"),
//     ],
//   ),
// );

