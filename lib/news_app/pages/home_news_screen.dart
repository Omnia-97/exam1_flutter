import 'package:exam_app_c10_monday/news_app/tabs/chat_tab.dart';
import 'package:exam_app_c10_monday/news_app/tabs/insights_tab.dart';
import 'package:exam_app_c10_monday/news_app/tabs/today_tab.dart';
import 'package:flutter/material.dart';

class HomeNewsScreen extends StatefulWidget {
  const HomeNewsScreen({super.key});

  @override
  State<HomeNewsScreen> createState() => _HomeNewsScreenState();
}

class _HomeNewsScreenState extends State<HomeNewsScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9FAFB),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Image(
          image: AssetImage('assets/images/img_news_app/logo_news.png'),
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: SizedBox(
        height: 90,
        child: BottomNavigationBar(
          elevation: 0,
          selectedItemColor: const Color(0xFF6941C6),
          showSelectedLabels: true,
          showUnselectedLabels: true,
          unselectedLabelStyle: const TextStyle(
            color: Color(0xFF475467),
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
          selectedLabelStyle: const TextStyle(
            color: Color(0xFF6941C6),
            fontWeight: FontWeight.w500,
            fontSize: 12,
          ),
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          unselectedItemColor: const Color(0xFF475467),
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
                  AssetImage('assets/icons/Icon_calendar.png'),
                  size: 45,
                ),
                label: 'Today'),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/icons/Icon_grid.png'),
                ),
                label: 'Insights'),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/icons/ic_news/ic_chat.png'),
                  size: 45,
                ),
                label: 'Chat'),
          ],
        ),
      ),
      body: tabs[index],
    );
  }

  List<Widget> tabs = [
    const TodayTab(),
    const InsightsTab(),
    const ChatTab(),
  ];
}
