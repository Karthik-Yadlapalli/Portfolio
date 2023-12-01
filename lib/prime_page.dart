import 'package:flutter/material.dart';
import 'package:portfolio/widgets/avatar.dart';
import 'package:portfolio/widgets/stage.dart';
import 'widgets/menu.dart';

class PrimePage extends StatelessWidget {
  const PrimePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        Row(
          children: [Menu(), Stage()],
        ),
        Positioned(top: 80, left: 200, child: MyAvatar())
      ],
    );
  }
}
