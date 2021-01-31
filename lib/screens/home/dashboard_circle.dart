import "package:flutter/material.dart";

// cust widgets
import "../../constants.dart";

class DashboardCircle extends StatelessWidget {
  DashboardCircle({this.dashNumber, this.dashString});

  final double dashNumber;
  final String dashString;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double dashboardCardSize = width / 4 - 15;
    return Expanded(
      child: Column(children: [
        Container(
          child: Center(
              child: Text(
            "$dashNumber",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 22, color: primaryColor),
          )),
          width: dashboardCardSize,
          height: dashboardCardSize,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(dashboardCardSize / 2),
              border: Border.all(width: 2, color: primaryColor)),
        ),
        Container(
          margin: EdgeInsets.all(8),
          child: Text(
            "$dashString",
            textAlign: TextAlign.center,
          ),
        )
      ]),
    );
  }
}
