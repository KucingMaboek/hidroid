import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'device_detail.dart';

class DeviceTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    final double itemHeight = (size.height - kToolbarHeight - 24) / 10;
    final double itemWidth = size.width / 2;

    return Scaffold(
        body: _buildListView(context),
    //     body: GridView.count(
    //   crossAxisCount: 1,
    //   childAspectRatio: (itemWidth / itemHeight),
    //   children: List.generate(3, (index) {
    //     print("size of : $index");
    //     return Card(
    //       child: Container(
    //         padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
    //         child: Column(
    //           crossAxisAlignment: CrossAxisAlignment.start,
    //           // mainAxisSize: MainAxisSize.min,
    //           children: <Widget>[
    //             const ListTile(
    //               leading: FaIcon(FontAwesomeIcons.microchip),
    //               title: Text('Heart Shaker ',
    //                   style: TextStyle(color: Colors.black)),
    //             ),
    //             Text("Halo kaka"),
    //           ],
    //         ),
    //       ),
    //     );
    //   }),
    // )
        );
  }

  ListView _buildListView(BuildContext context) {
    return ListView.builder(
      itemCount: 3,
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
