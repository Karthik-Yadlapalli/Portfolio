import 'package:flutter/material.dart';
import 'package:portfolio/utils/app_theme.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _AboutState();
}

class _AboutState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.transparent,
        child: Column(
          children: [
            const SizedBox(
              height: 300,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 200.0),
              child: Container(
                width: MediaQuery.of(context).size.width - 300 * 4.0,
                height: 250,
                color: Colors.white,
                child: RichText(
                  text: TextSpan(
                    text: 'Hello ',
                    style: TextStyle(fontSize: 30, color: AppTheme.selectedColor),
                    children: const <TextSpan>[
                      TextSpan(text: 'bold', style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: ' world!'),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
