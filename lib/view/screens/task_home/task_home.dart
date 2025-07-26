import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../widgets/custom_nav_item/custom_nav_item.dart';
import '../add_task_page/add_task_page.dart';
import '../my_task_page_screen/my_tasK_page_screen.dart';
import '../profile_page/profile_page.dart';

class TaskHome extends StatefulWidget {
  const TaskHome({Key? key}) : super(key: key);

  @override
  _TaskHomeState createState() => _TaskHomeState();
}

class _TaskHomeState extends State<TaskHome> {
  int _selectedIndex = 0;
  static const Color _barColor = Color(0xFFF7F6FF);

  final List<GlobalKey<NavigatorState>> _navigatorKeys = [
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
  ];

  void _onTap(int idx) {
    if (_selectedIndex == idx) {
      // pop to first route when reselecting tab
      _navigatorKeys[idx].currentState!.popUntil((route) => route.isFirst);
    } else {
      setState(() => _selectedIndex = idx);
    }
  }

  Widget _buildOffstageNavigator(int index) {
    return Offstage(
      offstage: _selectedIndex != index,
      child: Navigator(
        key: _navigatorKeys[index],
        onGenerateRoute: (RouteSettings settings) {
          Widget page;
          if (index == 0) {
            page = const TaskPage();
          } else if (index == 1) {
            page = const AddTaskPage();
          } else {
            page = const ProfilePage();
          }
          return MaterialPageRoute(builder: (_) => page);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _buildOffstageNavigator(0),
          _buildOffstageNavigator(1),
          _buildOffstageNavigator(2),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
        child: Container(
          decoration: BoxDecoration(
            color: _barColor,
            borderRadius: BorderRadius.circular(35.r),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              NavItem(
                icon: Icons.home_filled,
                label: 'My Tasks',
                isSelected: _selectedIndex == 0,
                onTap: () => _onTap(0),
              ),
              NavItem(
                icon: Icons.add,
                label: 'Add Task',
                isSelected: _selectedIndex == 1,
                onTap: () => _onTap(1),
              ),
              NavItem(
                icon: Icons.person,
                label: 'Profile',
                isSelected: _selectedIndex == 2,
                onTap: () => _onTap(2),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
