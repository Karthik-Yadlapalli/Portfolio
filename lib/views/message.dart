import 'package:flutter/material.dart';

class Message extends StatefulWidget {
  const Message({super.key});

  @override
  State<Message> createState() => _MessageState();
}

class _MessageState extends State<Message> {
  @override
  Widget build(BuildContext context) {
    return const Material(
      color: Colors.transparent,
      child:  Center(
        child: Text("Message" ,style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),),
      ),
    );
  }
}