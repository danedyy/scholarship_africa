import 'package:flutter/material.dart';
import 'package:scholarship_africa/util/constants.dart';

class NavbarItem extends StatelessWidget {
  final String label;
  final int index;
  final int currentTab;
  final Widget icon;
  const NavbarItem({
    Key? key,
    required this.label,
    required this.index,
    required this.currentTab,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = index == currentTab ? primaryColor : Colors.grey.shade400;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        icon,
        Text(
          label,
          style: TextStyle(
              color: color, fontSize: 10, fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}
