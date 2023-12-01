import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:portfolio/widgets/avatar.dart';
import 'package:portfolio/prime_page.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  ScrollController sCtrl = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
              child: Image.asset(
            "images/osman-rana-JcSsu-NF3qo-unsplash.jpg",
            fit: BoxFit.cover,
          )),
          Positioned.fill(
              child: Center(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 3.8, sigmaY: 3.8),
              child: Container(
                color: Colors.white.withOpacity(0.0),
              ),
            ),
          )),
          Column(
            children: [
              const Row(
                children: [MyAvatar()],
              ),
              Expanded(child: PrimePage())
            ],
          ),
        ],
      ),
    );
  }
}
