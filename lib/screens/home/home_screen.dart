import "package:flutter/material.dart";

// cust widgets
import "package:timeswappers/constants.dart";
import "../../wigets/DrawerWidget.dart";

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

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
        //   FlatButt2on(
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
            child: GestureDetector(
              onTap: () {},
              child: Container(
                height: 40,
                color: whiteColor,
                child: Center(child: Text("Product Search ")),
              ),
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
                            Expanded(
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.symmetric(vertical: 5),
                                      child: Text("TimeSwappers: 22 ES",
                                          style: TextStyle(
                                            color: whiteColor,
                                          )),
                                    ),
                                    Container(
                                      margin: EdgeInsets.symmetric(vertical: 5),
                                      child: Text(
                                        "Power from peers: 10 ES",
                                        style: TextStyle(color: whiteColor),
                                        softWrap: true,
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.symmetric(vertical: 5),
                                      child: Text(
                                        "TimeAlly Power Incenption: 10 ES",
                                        style: TextStyle(color: whiteColor),
                                        softWrap: true,
                                        maxLines: 2,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 1,
                              color: primaryColor,
                              height: 70,
                              margin: EdgeInsets.symmetric(horizontal: 10),
                            ),
                            Expanded(
                              child: Container(
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin:
                                            EdgeInsets.symmetric(vertical: 5),
                                        child: Text(
                                          "TimeAlly power: ES 250",
                                          style: TextStyle(color: whiteColor),
                                          softWrap: true,
                                        ),
                                      ),
                                      Container(
                                        margin:
                                            EdgeInsets.symmetric(vertical: 5),
                                        child: Text(
                                          "Portfolio value: ES 100 ",
                                          style: TextStyle(color: whiteColor),
                                          softWrap: true,
                                        ),
                                      ),
                                      Container(
                                        margin:
                                            EdgeInsets.symmetric(vertical: 5),
                                        child: Text(
                                          "Power from peers since inception: ES 100 ",
                                          style: TextStyle(color: whiteColor),
                                          softWrap: true,
                                        ),
                                      )
                                    ]),
                              ),
                            )
                          ],
                        )
                        // line
                        ,
                        Container(
                            height: 1,
                            color: primaryColor,
                            width: double.infinity,
                            margin: EdgeInsets.symmetric(vertical: 10)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                                child: Text("Deposit",
                                    style: TextStyle(color: whiteColor)),
                                decoration: BoxDecoration(color: primaryColor),
                                padding: EdgeInsets.fromLTRB(15, 10, 15, 10)),
                            Container(
                                child: Text("Withdraw",
                                    style: TextStyle(color: whiteColor)),
                                decoration: BoxDecoration(color: primaryColor),
                                padding: EdgeInsets.fromLTRB(15, 10, 15, 10))
                          ],
                        )
                      ],
                    ),
                  ),
                  // Dashboard
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Dashboard",
                        style: TextStyle(
                            color: primaryColor,
                            fontSize: 23,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left,
                      ),
                      margin: EdgeInsets.symmetric(vertical: 10)),
                  Container(
                    child: Text("Dashboard "),
                    padding: EdgeInsets.all(10),
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: whiteColor,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      )),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: darkColor,
        selectedItemColor: primaryColor,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Home")),
          BottomNavigationBarItem(
              icon: Icon(Icons.message), title: Text("Message")),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), title: Text("Notification")),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), title: Text("Person"))
        ],
      ),
    );
  }
}
