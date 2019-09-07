import 'package:beauty_flutter/content_pager.dart';
import 'package:flutter/material.dart';

class TabNavigator extends StatefulWidget {
  @override
  _TabNavigatorState createState() => _TabNavigatorState();
}

class _TabNavigatorState extends State<TabNavigator> {
  final _defaultColor = Colors.grey;
  final _activeColor = Colors.blue;
  int _currentIndex = 0;
  final ContentPagerController _contentPagerController =
      ContentPagerController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xffedeef0), Color(0xffe6e7e9)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: ContentPager(
          onPageChanged: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          contentPagerController: _contentPagerController,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          _contentPagerController.jumpToPage(index);
          setState(() {
            _currentIndex = index;
          });
        },
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          _bottomItem('本周', Icons.home, 0),
          _bottomItem('分享', Icons.explore, 1),
          _bottomItem('免费', Icons.donut_small, 2),
          _bottomItem('长安', Icons.person, 3)
        ],
      ),
    );
  }

  _bottomItem(String title, IconData icon, int index) {
    return BottomNavigationBarItem(
        icon: Icon(
          icon,
          color: _defaultColor,
        ),
        activeIcon: Icon(
          icon,
          color: _activeColor,
        ),
        title: Text(
          title,
          style: TextStyle(
            color: _currentIndex != index ? _defaultColor : _activeColor,
          ),
        ));
  }
}
