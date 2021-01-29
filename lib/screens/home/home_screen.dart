import "package:flutter/material.dart";

// cust widgets
import "package:timeswappers/constants.dart";
import "../../wigets/DrawerWidget.dart";

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: DrawerWidget(),
        appBar: AppBar(
          backgroundColor: primaryColor,
          title: Image(
            image: AssetImage("assets/images/timeswapperslogo_White.webp"),
            height: 60,
          ),
          elevation: 0,
          // actions: [
          //   FlatButton(
          //       onPressed: null,
          //       child: Icon(
          //         Icons.notifications,
          //         color: whiteColor,
          //       ))
          // ],
        ),
        body: Container(
            child: Column(
          children: [
            Container(
              child: Container(
                height: 40,
                color: whiteColor,
                child: Center(child: Text("Product Search")),
              ),
              padding: EdgeInsets.all(8),
              // color: primaryColor,
              decoration: BoxDecoration(
                color: primaryColor,
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "My Wallet",
                            style: TextStyle(
                                color: primaryColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 22),
                          ),
                          Text(
                            "View my transaction",
                            style: TextStyle(
                              color: primaryColor,
                            ),
                          )
                        ],
                      ),
                      padding: EdgeInsets.only(top: 15, left: 10, right: 10),
                    ),
                    Container(
                      color: darkColor,
                      padding: EdgeInsets.all(10),
                      width: double.infinity,
                      child: Column(
                        children: [
                          Container(
                            child: Text(
                              "Wallet Address: 0x99898238923fdjlkjsadjkl",
                              style: TextStyle(
                                color: primaryColor,
                                fontSize: 22,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Text(
                            "Your balance: ES 150",
                            style: TextStyle(
                              color: primaryColor,
                              fontSize: 18,
                            ),
                          ), // line
                          Container(
                            height: 1,
                            color: primaryColor,
                            width: double.infinity,
                            margin: EdgeInsets.symmetric(vertical: 10),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    "TimeSwappers: 20 ES",
                                    style: TextStyle(color: whiteColor),
                                    softWrap: true,
                                  ),
                                  Text(
                                    " Power from peers: 10 ES",
                                    style: TextStyle(color: whiteColor),
                                    softWrap: true,
                                  ),
                                  Text(
                                    " TimeAlly Power Incenption: 10 ES",
                                    style: TextStyle(color: whiteColor),
                                    softWrap: true,
                                    maxLines: 2,
                                  )
                                ],
                              ),
                              Container(
                                width: 1,
                                color: primaryColor,
                                height: 50,
                              ),
                              Column(children: [
                                Text(
                                  "TimeAlly power: ES 250",
                                  style: TextStyle(color: whiteColor),
                                  softWrap: true,
                                ),
                                Text(
                                  "Portfolio value: ES 100 ",
                                  style: TextStyle(color: whiteColor),
                                  softWrap: true,
                                ),
                                Text(
                                  "Power from peers since inception: ES 100 ",
                                  style: TextStyle(color: whiteColor),
                                  softWrap: true,
                                )
                              ])
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        )));
  }
}
