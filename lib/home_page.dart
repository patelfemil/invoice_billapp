import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:invoice_billapp/controller/widgetcontroller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  WidgetController widgetController=Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(
          Icons.inventory_2_outlined,
          color: Colors.black,
        ),
        title: Text(
          "Invoice",
          style: TextStyle(color: Colors.black87, fontSize: 25),
        ),
        actions: [
          CircleAvatar(
            maxRadius: 18,
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.black87,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.add,
                color: Colors.black87,
              )),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
          child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(13),
                    child: Text(
                      "#INVO0015",
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    decoration: BoxDecoration(color: Colors.grey[100],borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                  Container(
                    padding: EdgeInsets.all(13),
                    child: Column(
                      children: [
                        Icon(
                          Icons.photo,
                          size: 35,
                        ),
                        Text(
                          "Add Logo",
                          style: TextStyle(
                              color: Colors.black87,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(color: Colors.grey[100],borderRadius: BorderRadius.all(Radius.circular(10))),
                  )

                ],
              ),
              Text("From",style: TextStyle(color: Colors.blueAccent,fontWeight: FontWeight.bold,fontSize: 18),),
              SizedBox(height: 10,),
             Row(
               children: [
                 Flexible(
                   child: widgetController.textformfield(
                       text: "Name"
                   ),
                 ),
                 SizedBox(width: 10,),
                 Flexible(
                   child: widgetController.textformfield(
                       text: "Name"
                   ),
                 )
               ],
             ),
             SizedBox(height: 20,),
             Row(
               children: [
                 Flexible(
                   child: widgetController.textformfield(
                       text: "Name"
                   ),
                 ),
                 SizedBox(width: 10,),
                 Flexible(
                   child: widgetController.textformfield(
                       text: "Name"
                   ),
                 )
               ],
             ),
              SizedBox(height: 20,),
              widgetController.textformfield(
                int: 3,
                text: "Address"
              ),
              SizedBox(height: 20,),
              Text("To",style: TextStyle(color: Colors.blueAccent,fontWeight: FontWeight.bold,fontSize: 18),),
              SizedBox(height: 10,),
              Row(
                children: [
                  Flexible(
                    child: widgetController.textformfield(
                        text: "Name"
                    ),
                  ),
                  SizedBox(width: 10,),
                  Flexible(
                    child: widgetController.textformfield(
                        text: "Name"
                    ),
                  )
                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Flexible(
                    child: widgetController.textformfield(
                        text: "Name"
                    ),
                  ),
                  SizedBox(width: 10,),
                  Flexible(
                    child: widgetController.textformfield(
                        text: "Name"
                    ),
                  )
                ],
              ),
              SizedBox(height: 20,),
              widgetController.textformfield(
                  int: 3,
                  text: "Address"
              ),
              SizedBox(height: 20,),
              Container(
                color: Colors.black26,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(child: widgetController.text(text: "DESCRIPTION",color: Colors.black87,)),
                        widgetController.text(text: "RATE",color: Colors.black87,),
                        SizedBox(width: 12,),
                        widgetController.text(text: "QTY",color: Colors.black87,),
                        SizedBox(width: 12,),
                        widgetController.text(text: "AMOUNT",color: Colors.black87,),
                      ],
                    ),
                    Divider(),

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
