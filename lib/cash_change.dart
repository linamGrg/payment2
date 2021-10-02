import 'package:flutter/material.dart';
import 'cash_payment.dart';

// ignore: camel_case_types
class cashchange extends StatefulWidget {
  const cashchange({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _cashchangeState();
  // ignore: todo
  // TODO: implement createState
}

// ignore: camel_case_types
class _cashchangeState extends State<cashchange> {
  get builder => null;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(93),
            child: AppBar(
              //toolbarHeight: 150,
              backgroundColor: const Color(0xffFFFFFF),
              leadingWidth: 50,
              // ignore: prefer_const_literals_to_create_immutables
              leading: Row(children: [
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const cashpayment()));
                    },
                    child: Container(
                        margin: const EdgeInsets.only(left: 25, top: 35),
                        //color: Colors.blue,
                        child: const Icon(
                          Icons.arrow_back_ios,
                          color: Colors.black,
                        )))
              ]),
              title: Container(
                  margin: const EdgeInsets.only(top: 40),
                  //color: Colors.green,
                  child: const Text("Cash Payment",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.bold,
                      ))),
            )),
        body: Column(children: [
          Row(
            children: [
              Container(
                  margin: const EdgeInsets.only(top: 25, left: 40),
                  //color: Colors.blue,
                  height: 92.5,
                  width: 162.5,
                  //padding: const EdgeInsets.all(7),
                  decoration: const BoxDecoration(
                      color: Color(0xffFFFFFF),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          bottomLeft: Radius.circular(15))),
                  child: Column(
                    children: [
                      SizedBox(height: 25),
                      Text("Rs. 220",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold,
                            backgroundColor: Color(0xffFFFFFF),
                          )),
                      Text("Total Amount",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'Roboto',
                            //fontWeight: FontWeight.bold,
                            backgroundColor: Color(0xffFFFFFF),
                          )),
                    ],
                  )),
              Container(
                  //color: Colors.blue,
                  height: 92.5,
                  width: 162.5,
                  margin: const EdgeInsets.only(top: 25),
                  //padding: const EdgeInsets.all(7),
                  decoration: const BoxDecoration(
                    color: Color(0xffFFFFFF),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(15),
                        topRight: Radius.circular(15)),
                  ),
                  child: Center(
                      child: Column(
                    children: const [
                      SizedBox(height: 25),
                      Text("Rs. 30",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold,
                          )),
                      Text("Change",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'Roboto',
                            //fontWeight: FontWeight.bold,
                          )),
                    ],
                  )))
            ],
          ),
          //const SizedBox(height: 100),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 25, left: 25),
                child: Icon(Icons.mail),
              ),
              Container(
                  width: 310,
                  //color: Colors.blue,
                  margin: EdgeInsets.only(top: 25, left: 5),
                  child: TextField(
                    // decoration: InputDecoration(labelText: 'Email'),
                    style: TextStyle(fontSize: 14, fontFamily: 'Roboto'),
                  )),
            ],
          ),
          Container(
              margin: const EdgeInsets.only(top: 20),
              width: 184,
              height: 37,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const cashchange()));
                },
                child: const Text("Complete Payment"),
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xff30B700),
                  onSurface: Colors.blue,
                ), // set the background color
              ))
          /* SizedBox(
            height: 40,
          ),
          Expanded(
            //
            // alignment: Alignment.centerLeft,
            //constraints: BoxConstraints(maxHeight: 200, maxWidth: 200),
            child: ListView(
              //padding: EdgeInsets.only(left: 20),
              children: [
                ListTile(
                    leading: Row(children: [
                  //SizedBox(height: 20,),
                  Container(
                    //margin: EdgeInsets.only(top: 25),
                    // alignment: Alignment.centerLeft,
                    child: Icon(Icons.mail),
                  ),
                  Container(
                    child: Text("ok.123@gmail.com"),
                  ),
                ])),
                const Divider(
                  thickness: 1,
                ),
              ],
            ),
          ) */
          /* Container(
              //margin: const EdgeInsets.only(top:),
              child: ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const cashchange()));
            },
            child: const Text("Complete Payment"),
            style: ElevatedButton.styleFrom(
              primary: const Color(0xff30B700),
              onSurface: Colors.blue,
            ), // set the background color
          ))*/
        ]));
  }
}
