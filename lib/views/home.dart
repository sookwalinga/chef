import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:chef/custom_animated_bottom_bar.dart';
import 'package:chef/views/countdown-page.dart';
import 'package:chef/views/search_screen.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  final _inactiveColor = Colors.grey;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   automaticallyImplyLeading: false,
        //   title: Text("CHEF"),
        //   backgroundColor: Colors.deepOrange[900],
        //   centerTitle: true,
        // ),
        body: getBody(),
        bottomNavigationBar: _buildBottomBar());
  }

  Widget _buildBottomBar() {
    return CustomAnimatedBottomBar(
      containerHeight: 60,
      backgroundColor: Colors.black,
      selectedIndex: _currentIndex,
      showElevation: true,
      itemCornerRadius: 14,
      curve: Curves.easeIn,
      onItemSelected: (index) => setState(() => _currentIndex = index),
      items: <BottomNavyBarItem>[
        BottomNavyBarItem(
          icon: Icon(Icons.shutter_speed),
          title: Text('Timer'),
          activeColor: HexColor('#FFCC33'),
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: Icon(Icons.menu_book),
          title: Text('Recipes'),
          activeColor: HexColor('#FF6600'),
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: Icon(Icons.shopping_basket),
          title: Text(
            'Shopping List',
          ),
          activeColor: HexColor('#A45209'),
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: Icon(Icons.store_mall_directory),
          title: Text('Markets'),
          activeColor: Colors.brown,
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget getBody() {
    List<Widget> pages = [
      CountdownPage(),
      SearchScreen(),
      Container(
        alignment: Alignment.center,
        child: Text(
          "Shopping List",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
      Container(
        alignment: Alignment.center,
        child: Text(
          "Markets",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    ];
    return IndexedStack(
      index: _currentIndex,
      children: pages,
    );
  }
}
