
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hidroid/dashboard_tab.dart';
import 'package:hidroid/device_tab.dart';

class Home extends StatefulWidget {
  static String tag = 'home';

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  final _pageController = new PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "HIDROID",
          style: TextStyle(
              color: Colors.white
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.account_circle,
              color: Colors.white,
            ),
          )
        ],
        backgroundColor: Colors.blueAccent,
        elevation: 0,
      ),

      body: PageView(
        controller: _pageController,
        children: <Widget>[
          DashboardTab(),
          DeviceTab(),
        ],
        onPageChanged: (page) {
          setState(() {
            _selectedIndex = page;
          });
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.shifting,
        items: [
          BottomNavigationBarItem(
              icon: FaIcon(
                  FontAwesomeIcons.tachometerAlt,
                  color: Colors.blueAccent,
              ),
              title: Text(
                  "Dashboard",
                style: TextStyle(
                  color: Colors.blueAccent
                ),
              ),
              backgroundColor: Colors.lightBlueAccent.withOpacity(0.1)),
          BottomNavigationBarItem(
              icon: FaIcon(
                  FontAwesomeIcons.microchip,
                  color: Colors.blueAccent
              ),
              title: Text(
                  "Device",
                style: TextStyle(
                  color: Colors.blueAccent
                ),
              ),
              backgroundColor: Colors.lightBlueAccent.withOpacity(0.1)),
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
            _pageController.animateToPage(_selectedIndex,
                duration: Duration(milliseconds: 500), curve: Curves.ease);
          });
        },
      ),
    );
  }
}
