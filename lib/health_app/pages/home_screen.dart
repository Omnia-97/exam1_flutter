import 'package:exam_app_c10_monday/health_app/tabs/apps_tab.dart';
import 'package:exam_app_c10_monday/health_app/tabs/calendar_tab.dart';
import 'package:exam_app_c10_monday/health_app/tabs/home_tab.dart';
import 'package:exam_app_c10_monday/health_app/tabs/profile_tab.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Image(
          image: AssetImage('assets/images/img_health_app/logo.png'),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: badges.Badge(
              position: badges.BadgePosition.custom(
                bottom: .5,
                start: 18,
              ),
              badgeContent: const Text(''),
              child: const Icon(
                Icons.notifications_none,
                size: 35,
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Stack(
        children: [
          BottomNavigationBar(
            elevation: 0,
            selectedItemColor: const Color(0xFF027A48),
            showSelectedLabels: true,
            showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            unselectedItemColor: const Color(0xFF667085),
            currentIndex: index,
            selectedFontSize: 12.0,
            iconSize: 33,
            onTap: (value) {
              index = value;
              setState(() {});
            },
            items: const [
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/icons/Icon_home.png'),
                    size: 45,
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/icons/Icon_grid.png'),
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/icons/Icon_calendar.png'),
                    size: 45,
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/icons/ic_user.png'),
                    size: 44,
                  ),
                  label: ''),
            ],
          ),
          Positioned(
            bottom: 15,
            left: (MediaQuery.of(context).size.width / 4) * index +
                (MediaQuery.of(context).size.width / 4 - 10) / 2,
            child: Container(
              width: 8,
              height: 8,
              decoration: const BoxDecoration(
                color: Color(0xFF027A48),
                shape: BoxShape.circle,
              ),
            ),
          ),
        ],
      ),
      body: tabs[index],
    );
  }

  List<Widget> tabs = [
    const HomeTab(),
    const AppsTab(),
    const CalendarTab(),
    const ProfileTab(),
  ];
}
