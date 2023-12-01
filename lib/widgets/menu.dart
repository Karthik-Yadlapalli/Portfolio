import 'package:flutter/material.dart';
import 'package:portfolio/utils/app_theme.dart';
import 'package:portfolio/widgets/p_tabs.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
          gradient: AppTheme.sideMenuColor,
          border: Border(right: BorderSide(color: AppTheme.unSelectedColor, width: 3))),
      child: const Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
        SizedBox(
          height: 300,
        ),
        Align(
          alignment: Alignment.centerRight,
          child: PTabs())
      ]),
    );
  }
}
