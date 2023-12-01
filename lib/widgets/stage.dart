import 'package:flutter/material.dart';
import 'package:portfolio/utils/app_utils.dart';

class Stage extends StatefulWidget {
  const Stage({super.key});
  @override
  State<Stage> createState() => _StageState();
}

class _StageState extends State<Stage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width - 300,
          child: ClipRect(
            child: Image.asset(
              AppUtils.profileImage,
              fit: BoxFit.cover,
            ),
          ),
        )
      ],
    );
  }
}
