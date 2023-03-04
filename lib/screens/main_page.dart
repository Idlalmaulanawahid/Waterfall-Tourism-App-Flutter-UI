import 'package:waterfall_tourism_ui/config/theme.dart';
import 'package:waterfall_tourism_ui/screens/explore_destination_page.dart';
import 'package:waterfall_tourism_ui/screens/screens.dart';
import 'package:waterfall_tourism_ui/widgets/custom_bottom_navigation.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  static const String routName = '/mainPage';
  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routName),
      builder: (_) => const MainPage(),
    );
  }

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentPageIndex = 0;
  bool isSelectedMenu1 = true;
  bool isSelectedMenu2 = false;
  final List<Widget> pageList = [
    const HomePage(),
    const ExploreDestinationPage(),
  ];

  void onTabTapped(int value) async {
    setState(() {
      currentPageIndex = value;
      if (currentPageIndex == 0) {
        isSelectedMenu1 = true;
        isSelectedMenu2 = false;
      } else if (currentPageIndex == 1) {
        isSelectedMenu1 = false;
        isSelectedMenu2 = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget buildContent() {
      return pageList[currentPageIndex];
    }

    Widget customNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: 80,
          margin: EdgeInsets.only(
            bottom: 30,
            left: defaultMargin,
            right: defaultMargin,
          ),
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(50),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  onTabTapped(0);
                },
                child: CustomBottomNavigation(
                  imageUrl: isSelectedMenu1
                      ? 'assets/menu_home_active.png'
                      : 'assets/menu_home.png',
                ),
              ),
              GestureDetector(
                onTap: () {
                  onTabTapped(1);
                },
                child: CustomBottomNavigation(
                  imageUrl: isSelectedMenu2
                      ? 'assets/menu_explore_active.png'
                      : 'assets/menu_explore.png',
                ),
              ),
              const CustomBottomNavigation(
                imageUrl: 'assets/menu_archive.png',
              ),
              const CustomBottomNavigation(
                imageUrl: 'assets/menu_profile.png',
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        children: [
          buildContent(),
          customNavigation(),
        ],
      ),
    );
  }
}
