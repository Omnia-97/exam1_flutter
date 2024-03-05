import 'package:exam_app_c10_monday/workout_app/tabbarviewTabs/all_type_tab.dart';
import 'package:exam_app_c10_monday/workout_app/tabbarviewTabs/full_body_tab.dart';
import 'package:exam_app_c10_monday/workout_app/tabbarviewTabs/lower_tab.dart';
import 'package:exam_app_c10_monday/workout_app/tabbarviewTabs/upper_tab.dart';
import 'package:exam_app_c10_monday/workout_app/widgets/activity_container.dart';
import 'package:flutter/material.dart';

class HomeWorkOut extends StatelessWidget {
  const HomeWorkOut({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
      child: Column(
        children: [
          Container(
              alignment: Alignment.topCenter,
              padding: const EdgeInsets.all(16),
              width: 370,
              height: 100,
              decoration: BoxDecoration(
                color: const Color(0xFFF8F9FC),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ActivityContainer(
                      assetsName: 'assets/icons/ic_workout/ic_heart.png',
                      text: 'Heart Rate',
                      textNumber: '81',
                      textActivity: 'BPM'),
                  const VerticalDivider(
                    color: Color(0xFFD9D9D9),
                    width: 1,
                  ),
                  ActivityContainer(
                      assetsName: 'assets/icons/ic_workout/Ic_list.png',
                      text: 'To-Do',
                      textNumber: '32.5',
                      textActivity: '%'),
                  const VerticalDivider(
                    color: Color(0xFFD9D9D9),
                    width: 1,
                  ),
                  ActivityContainer(
                      assetsName: 'assets/icons/ic_workout/ic_cal.png',
                      text: 'Calo',
                      textNumber: '1000',
                      textActivity: 'Cal'),
                ],
              )),
          const SizedBox(
            height: 30,
          ),
          Container(
            alignment: Alignment.topLeft,
            child: const Text(
              'Workout Programs',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const Expanded(
            child: DefaultTabController(
              length: 4,
              child: Column(
                children: [
                  TabBar(
                    tabAlignment: TabAlignment.start,
                    isScrollable: true,
                    indicatorColor: Color(0xFF363F72),
                    unselectedLabelStyle: TextStyle(
                      color: Color(0xFF667085),
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                    tabs: [
                      Tab(
                        child: Text(
                          'All Type',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      Tab(
                        child: Text(
                          'Full Body',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      Tab(
                        child: Text(
                          'Upper',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      Tab(
                        child: Text(
                          'Lower',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                        AllTypeTab(),
                        FullBodyTab(),
                        UpperTab(),
                        LowerTab(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
