import 'package:flutter/material.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return const Material(
      color: Colors.transparent,
      child:  Center(
        child: Text("About" ,style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),),
      ),
    );
  }
}