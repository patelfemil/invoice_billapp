import 'package:flutter/material.dart';

class BusinessDetails extends StatefulWidget {
  const BusinessDetails({super.key});

  @override
  State<BusinessDetails> createState() => _BusinessDetailsState();
}

class _BusinessDetailsState extends State<BusinessDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        toolbarHeight: 80,
        centerTitle: true,
        backgroundColor: Colors.indigo,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(bottomRight: Radius.circular(40.0))
        ),
        title: Text("Business Details"),
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_circle_left_rounded,
              size: 35,
              color: Colors.white,
            )),
      ),
      body: Column(
        children: [

        ],
      ),
    );
  }
}
