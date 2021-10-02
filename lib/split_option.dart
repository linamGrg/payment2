import 'package:flutter/material.dart';
import 'package:payment_method/cash_change.dart';
import 'package:payment_method/split_payment.dart';
import 'cash_payment.dart';
import 'split_payment.dart';

// ignore: camel_case_types
class splitoption extends StatefulWidget {
  const splitoption({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _splitoption();
  // ignore: todo
  // TODO: implement createState
}

// ignore: camel_case_types
class _splitoption extends State<splitoption> {
  get builder => null;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(93),
            child: AppBar(
              backgroundColor: const Color(0xffFFFFFF),
              leadingWidth: 50,
              // ignore: prefer_const_literals_to_create_immutables
              leading: Row(children: [
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const cashchange()));
                    },
                    child: Container(
                        margin: const EdgeInsets.only(left: 25, top: 35),
                        // color: Colors.blue,
                        child: const Icon(
                          Icons.arrow_back_ios,
                          color: Colors.black,
                        )))
              ]),
              title: Container(
                  margin: const EdgeInsets.only(top: 40),
                  //color: Colors.green,
                  child: const Text("Remaining 220.00",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Roboto',
                        // fontWeight: FontWeight.bold,
                      ))),
            )),
        body: Column(children: [
          Row(
            children: [
              Container(
                  margin: const EdgeInsets.only(top: 50, left: 40),
                  //color: Colors.blue,
                  height: 92.5,
                  width: 320,
                  //padding: const EdgeInsets.all(7),
                  decoration: const BoxDecoration(
                      color: Color(0xffFFFFFF),
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: Row(
                    children: [
                      SizedBox(width: 35),
                      const CircleAvatar(
                          radius: 22,
                          backgroundColor: Color(0xff707070),
                          foregroundColor: Colors.black,
                          child: CircleAvatar(
                            radius: 20,
                            child: Text("-",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 35)),
                            backgroundColor: Colors.white,
                          )),
                      const SizedBox(width: 45),
                      Column(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          SizedBox(height: 20),
                          const Text("2",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 22,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.bold,
                                backgroundColor: Color(0xffFFFFFF),
                              )),
                          const Text("Person(s)",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xff707070),
                                fontSize: 16,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.bold,
                                backgroundColor: Color(0xffFFFFFF),
                              ))
                        ],
                      ),
                      SizedBox(width: 45),
                      const CircleAvatar(
                          radius: 22,
                          backgroundColor: Color(0xff707070),
                          foregroundColor: Colors.black,
                          child: CircleAvatar(
                            radius: 20,
                            child: Text("+",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 30)),
                            backgroundColor: Colors.white,
                          )),
                    ],
                  )),
            ],
          ),
          Container(
              width: size.width,
              //height: 300,
              margin: EdgeInsets.only(left: 25, top: 25),
              //color: Colors.blue,
              child: const Text("Person 1",
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold,
                  ))),
          Row(
            children: [
              Container(
                  //width: size.width,
                  //height: 300,
                  margin: EdgeInsets.only(left: 30, top: 5),
                  //color: Colors.blue,
                  child: const Text("Cash",
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Roboto',
                        //fontWeight: FontWeight.bold,
                      ))),
              Container(
                  //color: Colors.green,
                  width: 320,
                  //height: 300,
                  margin: EdgeInsets.only(top: 5),
                  //color: Colors.blue,
                  alignment: Alignment.centerRight,
                  child: const Icon(
                    Icons.arrow_drop_down,
                    size: 40,
                  )),
            ],
          ),
          Container(
              margin: EdgeInsets.only(left: 25, right: 25),
              child: const Divider(
                //height: 2,
                thickness: 1,
                color: Color(0xff7A7A7A),
              )),
          Row(
            children: [
              Container(
                  //width: size.width,
                  //height: 300,
                  margin: EdgeInsets.only(left: 30, top: 5),
                  //color: Colors.blue,
                  child: const Text("110.00",
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Roboto',
                        //fontWeight: FontWeight.bold,
                      ))),
              Container(
                  //color: Colors.green,
                  width: 308,
                  //height: 300,
                  margin: EdgeInsets.only(top: 5),
                  //color: Colors.blue,
                  alignment: Alignment.centerRight,
                  child: const Icon(
                    Icons.arrow_drop_down,
                    size: 40,
                  )),
            ],
          ),
          Container(
              margin: EdgeInsets.only(left: 25, right: 25),
              child: const Divider(
                //height: 2,
                thickness: 1,
                color: Color(0xff7A7A7A),
              )),
          Container(
              margin: const EdgeInsets.only(left: 25),
              alignment: Alignment.centerLeft,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const splitpayment()));
                },
                child: const Text("Pay"),
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xff30B700),
                  onSurface: Colors.blue,
                ), // set the background color
              )),
          Container(
              width: size.width,
              //height: 300,
              margin: EdgeInsets.only(left: 25, top: 25),
              //color: Colors.blue,
              child: const Text("Person 1",
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold,
                  ))),
          Row(
            children: [
              Container(
                  //width: size.width,
                  //height: 300,
                  margin: EdgeInsets.only(left: 30, top: 5),
                  //color: Colors.blue,
                  child: const Text("Cash",
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Roboto',
                        //fontWeight: FontWeight.bold,
                      ))),
              Container(
                  //color: Colors.green,
                  width: 320,
                  //height: 300,
                  margin: EdgeInsets.only(top: 5),
                  //color: Colors.blue,
                  alignment: Alignment.centerRight,
                  child: const Icon(
                    Icons.arrow_drop_down,
                    size: 40,
                  )),
            ],
          ),
          Container(
              margin: EdgeInsets.only(left: 25, right: 25),
              child: const Divider(
                //height: 2,
                thickness: 1,
                color: Color(0xff7A7A7A),
              )),
          Row(
            children: [
              Container(
                  //width: size.width,
                  //height: 300,
                  margin: EdgeInsets.only(left: 30, top: 5),
                  //color: Colors.blue,
                  child: const Text("110.00",
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Roboto',
                        //fontWeight: FontWeight.bold,
                      ))),
              Container(
                  //color: Colors.green,
                  width: 308,
                  //height: 300,
                  margin: EdgeInsets.only(top: 5),
                  //color: Colors.blue,
                  alignment: Alignment.centerRight,
                  child: const Icon(
                    Icons.arrow_drop_down,
                    size: 40,
                  )),
            ],
          ),
          Container(
              margin: EdgeInsets.only(left: 25, right: 25),
              child: const Divider(
                //height: 2,
                thickness: 1,
                color: Color(0xff7A7A7A),
              )),
          Container(
              margin: const EdgeInsets.only(left: 25),
              alignment: Alignment.centerLeft,
              child: ElevatedButton(
                onPressed: () {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => const cashchange()));
                },
                child: const Text("Pay"),
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xff30B700),
                  onSurface: Colors.blue,
                ), // set the background color
              ))
        ]));
  }
}
