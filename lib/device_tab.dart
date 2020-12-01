import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'device_detail.dart';

class DeviceTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: _buildListView(context),
    );
  }

  ListView _buildListView(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (_, index) {
        return Card(
          child: ListTile(
            title: Text('Device #$index'),
            subtitle: Text('Test'),
            leading: FaIcon(FontAwesomeIcons.microchip),
            // trailing: Icon(Icons.keyboard_arrow_right),
            trailing: Text('Status: Aktif'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DeviceDetail(index)));
            },
          ),
        );
      },
    );
  }
}
