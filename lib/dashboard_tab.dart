import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DashboardTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent.withOpacity(0.1),
      body: ListView(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height/4,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(180)),
              color: Colors.blueAccent
            ),
            child: Column(
              children: [
                SizedBox(height: 15,),
                Container(
                  child: Text(
                    "Status",
                    style: TextStyle(
                      color: Colors.white
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  child: Text(
                      "AMAN",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      )
    );
  }
}
