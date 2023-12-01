import 'package:flutter/material.dart';
import 'package:portfolio/utils/app_theme.dart';
import 'package:portfolio/utils/app_utils.dart';

class MyAvatar extends StatelessWidget {
  const MyAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 205,
      width: 205,
      decoration: BoxDecoration(
          border: Border.all(width: 5, color: AppTheme.unSelectedColor), borderRadius: BorderRadius.circular(15)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Image.asset(
          AppUtils.profileImage,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
