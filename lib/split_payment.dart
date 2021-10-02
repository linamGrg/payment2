import 'package:flutter/material.dart';
import 'package:payment_method/split_option.dart';

// ignore: camel_case_types
class splitpayment extends StatefulWidget {
  const splitpayment({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _splitpayment();
  // ignore: todo
  // TODO: implement createState
}

// ignore: camel_case_types
class _splitpayment extends State<splitpayment> {
  get builder => null;
  bool _isVisible = false;

  void showToast() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

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
                              builder: (context) => const splitoption()));
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
                      SizedBox(width: 45),
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
              margin: EdgeInsets.only(left: 25, right: 15),
              width: size.width,
              height: 450,
              // color: Colors.grey,
              child: Stack(
                children: <Widget>[
                  Positioned(
                      top: 0,
                      left: 0,
                      child: Container(
                          //width: size.width,
                          //height: 300,
                          margin: EdgeInsets.only(top: 25),
                          //color: Colors.blue,
                          child: const Text("Person 1",
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.bold,
                              )))),
                  Positioned(
                      top: 40,
                      left: 0,
                      child: Row(
                        children: <Widget>[
                          Container(
                              //width: size.width,
                              //height: 300,
                              margin: EdgeInsets.only(left: 10, top: 5),
                              //color: Colors.blue,
                              child: const Text("Cash",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'Roboto',
                                    //fontWeight: FontWeight.bold,
                                  ))),
                          Container(
                              width: size.width - 80,
                              alignment: Alignment.centerRight,
                              child: IconButton(
                                onPressed: showToast,
                                icon: Icon(
                                  Icons.arrow_drop_down,
                                  size: 40,
                                ),
                              )),
                        ],
                      )),
                  Positioned(
                      top: 80,
                      left: 0,
                      width: size.width,
                      height: 20,
                      child: Container(
                          // margin: EdgeInsets.only(left: 25, right: 25),
                          child: Divider(
                        //height: 2,
                        thickness: 1,
                        color: Color(0xff7A7A7A),
                      ))),
                  Positioned(
                      top: 100,
                      left: 10,
                      child: Row(
                        children: [
                          Container(
                              //width: size.width,
                              //height: 300,
                              //margin: EdgeInsets.only(left: 30, top: 5),
                              //color: Colors.blue,
                              child: const Text("110.00",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'Roboto',
                                    //fontWeight: FontWeight.bold,
                                  ))),
                          Container(
                              //color: Colors.green,
                              width: 300,
                              //height: 300,
                              //margin: EdgeInsets.only(top: 5),
                              //color: Colors.blue,
                              alignment: Alignment.centerRight,
                              child: const Icon(
                                Icons.arrow_drop_down,
                                size: 40,
                              )),
                        ],
                      )),
                  Positioned(
                      top: 140,
                      left: 0,
                      width: size.width,
                      child: Container(
                          //margin: EdgeInsets.only(left: 25, right: 25),
                          child: const Divider(
                        //height: 2,
                        thickness: 1,
                        color: Color(0xff7A7A7A),
                      ))),
                  Positioned(
                      top: 160,
                      left: 0,
                      child: Container(
                          //margin: const EdgeInsets.only(left: 25),
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
                          ))),
                  Positioned(
                      top: 200,
                      left: 0,
                      child: Container(
                          //width: size.width,
                          //height: 300,
                          margin: EdgeInsets.only(top: 25),
                          //color: Colors.blue,
                          child: const Text("Person 2",
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.bold,
                              )))),
                  Positioned(
                      top: 240,
                      left: 0,
                      child: Row(
                        children: <Widget>[
                          Container(
                              //width: size.width,
                              //height: 300,
                              margin: EdgeInsets.only(left: 10, top: 5),
                              //color: Colors.blue,
                              child: const Text("Cash",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'Roboto',
                                    //fontWeight: FontWeight.bold,
                                  ))),
                          Container(
                              width: size.width - 80,
                              alignment: Alignment.centerRight,
                              child: IconButton(
                                onPressed: showToast,
                                icon: Icon(
                                  Icons.arrow_drop_down,
                                  size: 40,
                                ),
                              )),
                        ],
                      )),
                  Positioned(
                      top: 280,
                      left: 0,
                      width: size.width,
                      height: 20,
                      child: Container(
                          // margin: EdgeInsets.only(left: 25, right: 25),
                          child: Divider(
                        //height: 2,
                        thickness: 1,
                        color: Color(0xff7A7A7A),
                      ))),
                  Positioned(
                      top: 300,
                      left: 10,
                      child: Row(
                        children: [
                          Container(
                              //width: size.width,
                              //height: 300,
                              //margin: EdgeInsets.only(left: 30, top: 5),
                              //color: Colors.blue,
                              child: const Text("110.00",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'Roboto',
                                    //fontWeight: FontWeight.bold,
                                  ))),
                          Container(
                              //color: Colors.green,
                              width: 300,
                              //height: 300,
                              //margin: EdgeInsets.only(top: 5),
                              //color: Colors.blue,
                              alignment: Alignment.centerRight,
                              child: const Icon(
                                Icons.arrow_drop_down,
                                size: 40,
                              )),
                        ],
                      )),
                  Positioned(
                      top: 340,
                      left: 0,
                      width: size.width,
                      child: Container(
                          //margin: EdgeInsets.only(left: 25, right: 25),
                          child: const Divider(
                        //height: 2,
                        thickness: 1,
                        color: Color(0xff7A7A7A),
                      ))),
                  Positioned(
                      top: 360,
                      left: 0,
                      child: Container(
                          //margin: const EdgeInsets.only(left: 25),
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
                          ))),
                  Positioned(
                      top: 70,
                      left: 110,
                      child: Visibility(
                          visible: _isVisible,
                          child: Container(
                            width: 240,
                            height: 280,
                            // decoration: BoxDecoration(
                            //     borderRadius:
                            //         BorderRadius.all(Radius.circular(25))),
                            //color: Colors.green,
                            child:
                                //color: Colors.green,
                                Card(
                                    child: Column(
                              children: [
                                new ListTile(
                                  leading: Text('Cash',
                                      style: TextStyle(
                                          fontSize: 14, fontFamily: 'Roboto')),
                                ),
                                Divider(
                                  thickness: 1,
                                  color: Color(0xffE0E0E0),
                                ),
                                new ListTile(
                                  leading: Text('Card',
                                      style: TextStyle(
                                          fontSize: 14, fontFamily: 'Roboto')),
                                ),
                                Divider(
                                  thickness: 1,
                                  color: Color(0xffE0E0E0),
                                ),
                                new ListTile(
                                  leading: Text('Online',
                                      style: TextStyle(
                                          fontSize: 14, fontFamily: 'Roboto')),
                                ),
                                Divider(
                                  thickness: 1,
                                  color: Color(0xffE0E0E0),
                                ),
                                new ListTile(
                                  leading: Text('Credits',
                                      style: TextStyle(
                                          fontSize: 14, fontFamily: 'Roboto')),
                                ),
                              ],
                            )),
                          )))
                ],
              ))
          // Visibility(
          //   visible: _isVisible,
          //   child: Text("hi"),
          // ),
        ]));
  }
}
