import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:water_drop_nav_bar/water_drop_nav_bar.dart';
import '../constants/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'home_details.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final Color navigationBarColor = Colors.white;
  int selectedIndex = 0;
  late PageController pageController;
  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: selectedIndex);
  }
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        systemNavigationBarColor: navigationBarColor,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
      child: Scaffold(
        backgroundColor: gradientEndColor,
        body:PageView(
            physics: const NeverScrollableScrollPhysics(),
            controller: pageController,
            children: <Widget>[
              HomeDetails(),
            ]
        ),
        bottomNavigationBar: WaterDropNavBar(
          backgroundColor: navigationBarColor,
          onItemSelected: (int index) {
            setState(() {
              selectedIndex = index;
            });
            pageController.animateToPage(selectedIndex,
                duration: const Duration(milliseconds: 400),
                curve: Curves.easeOutQuad);
          },
          selectedIndex: selectedIndex,
          barItems: <BarItem>[
            BarItem(
              filledIcon: Icons.home_filled,
              outlinedIcon: Icons.home_outlined,
            ),
            BarItem(
                filledIcon: Icons.search,
                outlinedIcon: Icons.search_outlined),
            BarItem(
              filledIcon: FontAwesomeIcons.a,
              outlinedIcon: FontAwesomeIcons.gears,
            ),
            BarItem(
              filledIcon: Icons.folder_rounded,
              outlinedIcon: Icons.folder_outlined,
            ),
          ],
        ),
      ),
        // bottomNavigationBar: Container(
        //   decoration: BoxDecoration(
        //     color: navigationColor,
        //     borderRadius: BorderRadius.vertical(
        //       top: Radius.circular(36.0),
        //     )
        //   ),
        //   padding: EdgeInsets.all(24),
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //     children: [
        //       IconButton(onPressed: (){}, icon: Image.asset("assets/menu_icon.png")),
        //       IconButton(onPressed: (){}, icon: Image.asset("assets/search_icon.png")),
        //       IconButton(onPressed: (){}, icon: Image.asset("assets/profile_icon.png")),
        //     ],
        //   ),
        // ),

    );
  }
}
