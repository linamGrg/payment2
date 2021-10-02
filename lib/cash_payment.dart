import 'package:flutter/material.dart';
import 'package:payment_method/cash_change.dart';
import 'package:payment_method/split_option.dart';
import "home_page.dart";
import "cash_change.dart";

// ignore: camel_case_types
class cashpayment extends StatefulWidget {
  const cashpayment({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _cashpaymentState();
}
// ignore: todo
// TODO: implement createState

// ignore: camel_case_types
class _cashpaymentState extends State<cashpayment> {
  get builder => null;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(93),
            child: AppBar(
              toolbarHeight: 100,
              backgroundColor: const Color(0xffFFFFFF),
              // leadingWidth: 100,
              // ignore: prefer_const_literals_to_create_immutables
              leading:
                  //
                  //Padding(padding: EdgeInsets.only(top: 20)),

                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage()));
                      },
                      child: Container(
                          margin: const EdgeInsets.only(top: 5, left: 25),
                          child: const Icon(
                            Icons.arrow_back_ios,
                            color: Colors.black,
                          ))),

              title: Container(
                  margin: const EdgeInsets.only(top: 5),
                  child: const Text("Cash Payment",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Roboto',
                        //fontWeight: FontWeight.bold,
                      ))),
              actions: [
                Container(
                    margin: const EdgeInsets.only(right: 10, top: 35),
                    child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => splitoption()));
                        },
                        child: const Text("SPLIT",
                            style: TextStyle(
                              color: Color(0xff30B700),
                              fontSize: 16,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w700,
                            ))))
              ],
            )),
        body: Column(
          children: [
            Container(
                // height: 20,
                margin: const EdgeInsets.only(top: 40),
                child: const Text("Rs. 220.00",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold,
                    ))),
            Container(
                //  height: 20,
                //  margin: const EdgeInsets.only(bottom: 50),
                child: const Text("Total Amount",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Roboto',
                      //fontWeight: FontWeight.bold,
                    ))),
            Container(
              margin: EdgeInsets.only(top: 25, left: 25),
              // alignment: Alignment.centerLeft,
              width: size.width,

              child: const Text("Cash Recieved"),
            ),
            Container(
              //
              // alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(top: 5, left: 25),
              width: size.width,
              child: const Text(
                "250.00",
              ),
            ),
            Container(
                width: size.width,
                margin: EdgeInsets.only(left: 25, right: 25),
                child: Divider(
                  thickness: 1,
                  color: Color(0xffE0E0E0),
                )),
            Container(
                margin: const EdgeInsets.only(top: 50),
                width: 104,
                height: 37,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const cashchange()));
                  },
                  child: const Text("Confirm"),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xff30B700),
                    onSurface: Colors.blue,
                  ), // set the background color
                ))
          ],
        ));
  }
}
