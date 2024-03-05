import 'package:exam_app_c10_monday/workout_app/tabs/chartbar_tab.dart';
import 'package:exam_app_c10_monday/workout_app/tabs/home_workOut.dart';
import 'package:exam_app_c10_monday/workout_app/tabs/navPointer_tab.dart';
import 'package:exam_app_c10_monday/workout_app/tabs/user_tab.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class WorkOutHome extends StatefulWidget {
  const WorkOutHome({super.key});

  @override
  State<WorkOutHome> createState() => _WorkOutHomeState();
}

class _WorkOutHomeState extends State<WorkOutHome> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              const CircleAvatar(
                backgroundImage:
                    AssetImage('assets/images/img_workout_app/ic_img.png'),
                radius: 27,
              ),
              const SizedBox(
                width: 20,
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hello, Jade',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                  Text(
                    'Ready to workout?',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              const Spacer(),
              badges.Badge(
                position: badges.BadgePosition.custom(
                  bottom: 10,
                  start: 20,
                ),
                badgeContent: const Text(''),
                child: const Icon(
                  Icons.notifications_none,
                  size: 35,
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Stack(
        children: [
          BottomNavigationBar(
            elevation: 0,
            selectedItemColor: const Color(0xFF363F72),
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
                    AssetImage('assets/icons/ic_workout/Ic_nav_pointer.png'),
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/icons/ic_workout/ic_bar_chart.png'),
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
                color: Color(0xFF363F72),
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
    const HomeWorkOut(),
    const NavPointerTab(),
    const ChartBarTab(),
    const UserTab(),
  ];
}
