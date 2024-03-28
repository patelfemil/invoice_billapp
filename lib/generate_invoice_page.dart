import 'package:flutter/material.dart';

class GenerateInvoicePage extends StatefulWidget {
  const GenerateInvoicePage({super.key});

  @override
  State<GenerateInvoicePage> createState() => _GenerateInvoicePageState();
}

class _GenerateInvoicePageState extends State<GenerateInvoicePage> {
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
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Invoice",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo[400]),
                ),
                TextButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.blueGrey[50]),
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5))))),
                    onPressed: () {},
                    child: Text(
                      "Edit",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.indigo[400]),
                    )),
                TextButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.blueGrey[50]),
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5))))),
                    onPressed: () {},
                    child: Text(
                      "Preview Via Email",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.indigo[400]),
                    )),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(shape: BoxShape.rectangle),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
