import 'package:flutter/material.dart';
import 'dart:async';

import 'package:hidroid/home.dart';


class Awalan extends StatefulWidget{

  _Awalan createState() => _Awalan();
}

class _Awalan extends State<Awalan>{
  void initState(){
    super.initState();
    splashscreenStart();
  }

  splashscreenStart() async{
    var duration = const Duration(seconds: 3);
    return Timer(duration, (){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Home()),

      );
    });
  }

  @override
  Widget build (BuildContext context){
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 24.0,),

            Text("HIDROID",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
            ),
          ],
        ),
      ),
    );
  }

}

