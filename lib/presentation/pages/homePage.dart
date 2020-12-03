import 'package:GCPrice/presentation/pages/stores_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motion_tab_bar/MotionTabBarView.dart';
import 'package:motion_tab_bar/MotionTabController.dart';
import 'package:motion_tab_bar/motiontabbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  MotionTabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = MotionTabController(initialIndex: 1, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MotionTabBar(
        labels: ["Profile", "Stores", "Favorite"],
        initialSelectedTab: "Stores",
        tabIconColor: Colors.lightBlue,
        tabSelectedColor: Colors.blue,
        onTabItemSelected: (int value) {
          print(value);
          setState(() {
            _tabController.index = value;
          });
        },
        icons: [Icons.person, Icons.home, Icons.favorite],
        textStyle: GoogleFonts.arvo(
            textStyle: TextStyle(
          color: Colors.black,
        )),
      ),
      body: MotionTabBarView(
        controller: _tabController,
        children: <Widget>[
          Container(
            child: Center(
              child: Text("Profile", style: GoogleFonts.arvo()),
            ),
          ),
          StoresPage(),
          Container(
            child: Center(
              child: Text("Favorite", style: GoogleFonts.arvo()),
            ),
          ),
        ],
      ),
    );
  }
}
