import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:invoice_billapp/business_details.dart';
import 'package:invoice_billapp/controller/home_controller.dart';

class InstantInvoicePage extends StatefulWidget {
  const InstantInvoicePage({super.key});

  @override
  State<InstantInvoicePage> createState() => _InstantInvoicePageState();
}

class _InstantInvoicePageState extends State<InstantInvoicePage> {
  HomeController homeController =Get.find();
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        leading: InkWell(
            onTap: () {
              scaffoldKey.currentState?.openDrawer();
            },
            child: Icon(Icons.menu,color: Colors.white,)),
        centerTitle: true,
        title: Text(
          "Instant Inovice",
          style: TextStyle(color: Colors.white),
        ),
        toolbarHeight: 75,
        shape: OutlineInputBorder(
            borderRadius: BorderRadius.only(bottomRight: Radius.circular(50))),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              padding:
              EdgeInsets.only(top: 90, bottom: 60, right: 70, left: 50),
              // height: double.maxFinite,
              width: double.maxFinite,
              color: Colors.blue[900],
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Bhautik",
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      "+1234567890",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    )
                  ]),
            ),
            Container(
              padding: EdgeInsets.only(top:20,right: 60 ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextButton(onPressed: () {}, child: Text("Printed Invoices",style: TextStyle(color: Colors.black),)),
                    TextButton(onPressed: () {}, child: Text("My Items",style: TextStyle(color: Colors.black),)),
                    TextButton(onPressed: () {}, child: Text("Customers",style: TextStyle(color: Colors.black),)),
                    TextButton(onPressed: () {

                      Get.to(BusinessDetails());
                    }, child: Text("Business Info Settings",style: TextStyle(color: Colors.black),)),
                    TextButton(onPressed: () {}, child: Text("Output Image Quality",style: TextStyle(color: Colors.black),)),
                    TextButton(onPressed: () {}, child: Text("How To Use",style: TextStyle(color: Colors.black),)),
                    TextButton(onPressed: () {}, child: Text("About this app",style: TextStyle(color: Colors.black),)),
                    TextButton(onPressed: () {}, child: Text("Rate Us",style: TextStyle(color: Colors.black),)),
                    TextButton(onPressed: () {}, child: Text("Share with Firends",style: TextStyle(color: Colors.black),)),
                  ]),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Instant Invoices",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Flexible(
                    child: TextFormField(
                      controller: homeController.oId,
                      decoration: InputDecoration(
                        hintText: "Order ID",
                        hintStyle: TextStyle(color: Colors.grey[400]),
                        focusedBorder: InputBorder.none,
                        border: InputBorder.none,
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        enabled: true,
                        // focusColor: Colors.red,
                        // focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                        filled: true,
                        fillColor: Colors.grey[300],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Flexible(
                    child: TextFormField(
                      controller: homeController.oDate,
                      decoration: InputDecoration(
                        hintText: " Order Date",
                        hintStyle: TextStyle(color: Colors.grey[400]),
                        focusedBorder: InputBorder.none,
                        border: InputBorder.none,
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        enabled: true,
                        // focusColor: Colors.red,
                        // focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                        filled: true,
                        fillColor: Colors.grey[300],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Customer Information",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Icon(
                    Icons.person,
                    size: 30,
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Flexible(
                    child: TextFormField(
                      controller: homeController.cName,
                      decoration: InputDecoration(
                        hintText: "Customer Name",
                        hintStyle: TextStyle(color: Colors.grey[400]),
                        focusedBorder: InputBorder.none,
                        border: InputBorder.none,
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        enabled: true,
                        // focusColor: Colors.red,
                        // focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                        filled: true,
                        fillColor: Colors.grey[300],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Icon(
                    Icons.location_on_sharp,
                    size: 30,
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Flexible(
                    child: TextFormField(
                      controller: homeController.cAddress,
                      decoration: InputDecoration(
                        hintText: "Customer Address",
                        hintStyle: TextStyle(color: Colors.grey[400]),
                        focusedBorder: InputBorder.none,
                        border: InputBorder.none,
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        enabled: true,
                        // focusColor: Colors.red,
                        // focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                        filled: true,
                        fillColor: Colors.grey[300],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Icon(
                    Icons.phone,
                    size: 30,
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Flexible(
                    child: TextFormField(
                      controller: homeController.cPhone,
                      decoration: InputDecoration(
                        hintText: "Customer Phone",
                        hintStyle: TextStyle(color: Colors.grey[400]),
                        focusedBorder: InputBorder.none,
                        border: InputBorder.none,
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        enabled: true,
                        // focusColor: Colors.red,
                        // focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                        filled: true,
                        fillColor: Colors.grey[300],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Optionals",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Flexible(
                    child: TextFormField(
                      controller: homeController.dFees,
                      decoration: InputDecoration(
                        hintText: "Delivery Fees",
                        hintStyle: TextStyle(color: Colors.grey[400]),
                        focusedBorder: InputBorder.none,
                        border: InputBorder.none,
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        enabled: true,
                        // focusColor: Colors.red,
                        // focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                        filled: true,
                        fillColor: Colors.grey[300],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Flexible(
                    child: TextFormField(
                      controller: homeController.aPaid,
                      decoration: InputDecoration(
                        hintText: "Advance Paid",
                        hintStyle: TextStyle(color: Colors.grey[400]),
                        focusedBorder: InputBorder.none,
                        border: InputBorder.none,
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        enabled: true,
                        // focusColor: Colors.red,
                        // focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                        filled: true,
                        fillColor: Colors.grey[300],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Flexible(
                    child: TextFormField(
                      controller: homeController.tRate,
                      decoration: InputDecoration(
                        hintText: "Tax Rate%",
                        hintStyle: TextStyle(color: Colors.grey[400]),
                        focusedBorder: InputBorder.none,
                        border: InputBorder.none,
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        enabled: true,
                        // focusColor: Colors.red,
                        // focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                        filled: true,
                        fillColor: Colors.grey[300],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Flexible(
                    child: TextFormField(
                      controller: homeController.discount,
                      decoration: InputDecoration(
                        hintText: "Discount%",
                        hintStyle: TextStyle(color: Colors.grey[400]),
                        focusedBorder: InputBorder.none,
                        border: InputBorder.none,
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        enabled: true,
                        // focusColor: Colors.red,
                        // focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                        filled: true,
                        fillColor: Colors.grey[300],
                      ),
                    ),
                  ),
                ],
              ),
              CheckboxListTile(
                value: homeController.checkBox,
                onChanged: (value) {
                  setState(() {
                    homeController.checkBox = value!;
                  });
                },
                title: Text(
                  "Paid Stamp",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                activeColor: Colors.blue[900],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("Add Items"),
                  ),
                  TextButton(onPressed: () {}, child: Text("Clear All"))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
