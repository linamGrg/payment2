import 'package:flutter/material.dart';
import 'package:payment_method/split_option.dart';
import "cash_payment.dart";
import "split_option.dart";

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return initScreen();
  }

  Widget initScreen() {
    return Scaffold(
        backgroundColor: const Color(0xffF4F4F4),
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(93),
            child: AppBar(
              backgroundColor: Colors.white,
              leading: Container(
                  margin: const EdgeInsets.only(right: 10, top: 35, left: 25),
                  child: const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                  )),
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
                height: 20,
                margin: const EdgeInsets.only(top: 20),
                child: const Text("Rs. 220.00",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold,
                    ))),
            Container(
                height: 20,
                margin: const EdgeInsets.only(bottom: 20, top: 10),
                child: const Text("Total Amount",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold,
                    ))),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    leading: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const cashpayment()));
                      },
                      child: const CircleAvatar(
                        backgroundImage: AssetImage("images/cash.jpg"),
                      ),
                    ),
                    title: const Text('Cash'),
                  ),
                  const Divider(
                    thickness: 1,
                    indent: 60,
                    endIndent: 40,
                  ),
                  const ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage("images/credit.jpg"),
                    ),
                    title: Text('Card'),
                  ),
                  const Divider(
                    thickness: 1,
                    indent: 60,
                    endIndent: 40,
                  ),
                  const ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage("images/mobile.png"),
                    ),
                    title: Text('Online'),
                  ),
                  const Divider(
                    thickness: 1,
                    indent: 60,
                    endIndent: 40,
                  ),
                  const ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage("images/star.png"),
                    ),
                    title: Text('Credt'),
                  ),
                  const Divider(
                    thickness: 1,
                    indent: 60,
                    endIndent: 40,
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
