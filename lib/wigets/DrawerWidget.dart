import "package:flutter/material.dart";
// Cust Widget
import 'package:timeswappers/constants.dart';

double _profile_image_size = 80;

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
          child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(color: primaryColor),
            child: Row(
              children: [
                Container(
                  child: ClipRRect(
                    child: Image(
                      image: AssetImage("assets/images/profile_image.webp"),
                      width: _profile_image_size,
                      height: _profile_image_size,
                    ),
                    borderRadius:
                        BorderRadius.circular(_profile_image_size / 2),
                  ),
                  decoration: BoxDecoration(),
                  margin: EdgeInsets.only(right: 10),
                ),
                Column(children: [
                  Text(
                    "User Name",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text("Wallet Address")
                ])
              ],
            ),
          )
        ],
      )),
    );
  }
}
