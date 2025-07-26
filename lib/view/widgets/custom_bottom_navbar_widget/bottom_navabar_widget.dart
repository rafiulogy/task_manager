
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../screens/task_home/controller/bottom_nav_bar_controller.dart';

class CustomNavBar extends StatelessWidget {
  final NavController _navCtrl = Get.put(NavController());

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final idx = _navCtrl.selectedIndex.value;

      return BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 6,
        child: SizedBox(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              // My Tasks
              _NavItem(
                icon: Icons.home_outlined,
                label: 'My Tasks',
                isSelected: idx == 0,
                onTap: () => _navCtrl.changeIndex(0),
              ),

              // Spacing for middle FAB
              const SizedBox(width: 40),

              // Profile
              _NavItem(
                icon: Icons.person_outline,
                label: 'Profile',
                isSelected: idx == 2,
                onTap: () => _navCtrl.changeIndex(2),
              ),
            ],
          ),
        ),
      );
    });
  }
}

class _NavItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  const _NavItem({
    required this.icon,
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final color = isSelected ? Colors.green : Colors.grey[600];
    return InkWell(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color, size: 28),
          const SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(color: color, fontSize: 12),
          ),
        ],
      ),
    );
  }
}
