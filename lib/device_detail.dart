import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DeviceDetail extends StatelessWidget {
  final int id;

  DeviceDetail(this.id);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.white),
          title: Text('Detail Perangkat',
              style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.blueAccent),
      // body: body,
      body: new Container(
        constraints: new BoxConstraints.expand(),
        color: Colors.white,
        child: new Stack(
          children: [],
        ),
      ),
    );
  }
}
