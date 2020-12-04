import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DeviceDetail extends StatelessWidget {
  final int id;

  DeviceDetail(this.id);

  @override
  Widget build(BuildContext context) {
    // Data
    bool isConnected = true;
    String ssid = "Wifi Bapakkau";
    String deviceName = "Device One";
    double temperature = 0;
    double ph = 0;
    double ppm = 0;

    // Widgets
    ListTile connection() {
      if (isConnected) {
        return ListTile(
          title: Text("Koneksi: Terhubung"),
          subtitle: Text("Terhubung dengan '$ssid'"),
          leading: FaIcon(
            FontAwesomeIcons.wifi,
            color: Colors.blue,
          ),
        );
      } else {
        return ListTile(
          title: Text("Koneksi: Tidak Terhubung"),
          leading: FaIcon(
            FontAwesomeIcons.wifi,
            color: Colors.blue,
          ),
        );
      }
    }

    Card _deviceConnection() {
      return Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              connection(),
              ButtonTheme(
                minWidth: 500,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: BorderSide(color: Colors.blueAccent)),
                  onPressed: () {},
                  color: Colors.white,
                  textColor: Colors.blueAccent,
                  child: Text('Segarkan'.toUpperCase()),
                ),
              ),
            ],
          ),
        ),
      );
    }

    Card _deviceControl() {
      return Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                title: Text('Kontrol Hidroponik'),
              ),
              Card(
                color: Colors.white70,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Suhu",
                        style: TextStyle(fontSize: 20.0),
                      ),
                      // Text("data"),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          '$temperature',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                color: Colors.white70,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Ppm",
                        style: TextStyle(fontSize: 20.0),
                      ),
                      // Text("data"),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          '$ppm',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      ButtonTheme(
                        minWidth: MediaQuery.of(context).size.width,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              side: BorderSide(color: Colors.blueAccent)),
                          onPressed: () {},
                          color: Colors.blueAccent,
                          textColor: Colors.white,
                          child: Text('Tambah Ppm'.toUpperCase()),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                color: Colors.white70,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Ph",
                        style: TextStyle(fontSize: 20.0),
                      ),
                      // Text("data"),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          '$ph',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      ButtonTheme(
                        minWidth: MediaQuery.of(context).size.width,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              side: BorderSide(color: Colors.blueAccent)),
                          onPressed: () {},
                          color: Colors.blueAccent,
                          textColor: Colors.white,
                          child: Text('Tambah Ph'.toUpperCase()),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    Card _deviceSetting() {
      return Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                title: Text('Pengaturan Perangkat'),
              ),
              // Text("Belom Diimplementasi"),
              TextFormField(
                autofocus: false,
                initialValue: "$deviceName",
                decoration: InputDecoration(
                  labelText: "Nama Perangkat",
                    // initialValue: "hello?",
                    // hintText: 'Nama Perangkat',
                    contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0))),
              ),
              ButtonTheme(
                minWidth: MediaQuery.of(context).size.width,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: BorderSide(color: Colors.blueAccent)),
                  onPressed: () {},
                  color: Colors.blueAccent,
                  textColor: Colors.white,
                  child: Text('Simpan Perubahan'.toUpperCase()),
                ),
              ),
            ],
          ),
        ),
      );
    }

    ButtonTheme _deleteDevice() {
      return ButtonTheme(
        minWidth: MediaQuery.of(context).size.width,
        child: RaisedButton(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
              side: BorderSide(color: Colors.redAccent)),
          onPressed: () {},
          color: Colors.redAccent,
          textColor: Colors.white,
          child: Text('Hapus Perangkat'.toUpperCase()),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.white),
          title:
              Text('Detail Perangkat', style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.blueAccent),
      body: new SingleChildScrollView(
        child: new Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          color: Colors.blueAccent,
          child: new Column(
            children: [
              _deviceConnection(),
              _deviceControl(),
              _deviceSetting(),
              _deleteDevice(),
            ],
          ),
        ),
      ),
    );
  }
}
