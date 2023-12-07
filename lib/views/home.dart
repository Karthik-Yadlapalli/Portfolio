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
    double screenWidth = MediaQuery.of(context).size.width;
    return Material(
        color: Colors.transparent,
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * (3 / 8),
            ),
            Padding(
              padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * (1 / 8)),
              child: RichText(
                text: TextSpan(
                  text: "Hi there!\n",
                  style: TextStyle(
                      fontSize: screenWidth < 1100 ? MediaQuery.of(context).size.width * (0.5 / 8) : 60,
                      color: AppTheme.selectedColor,
                      fontWeight: FontWeight.bold),
                  children: <TextSpan>[
                    TextSpan(
                        text: "I'm ",
                        style: TextStyle(
                            fontSize: screenWidth < 1100 ? MediaQuery.of(context).size.width * (0.2 / 8) : 32)),
                    TextSpan(
                        text: "Karthik Yadlapalli\n",
                        style: TextStyle(
                            fontSize: screenWidth < 1100 ? MediaQuery.of(context).size.width * (0.3 / 8) : 36)),
                    TextSpan(
                        text: 'Mobile Application Developer',
                        style: TextStyle(
                            fontSize: screenWidth < 1100 ? MediaQuery.of(context).size.width * (0.2 / 8) : 32)),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
