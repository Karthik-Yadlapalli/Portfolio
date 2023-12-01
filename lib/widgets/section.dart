import 'package:flutter/material.dart';

class PContents extends StatelessWidget {
  final String text;
  final Function() onSelection;
  bool isSelected = false;
   PContents({Key? key, required this.text, required this.onSelection, required this.isSelected}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
          hoverColor: Colors.transparent,
          onTap: onSelection,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 35.0, horizontal: 30.0),
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                text,
                style: const TextStyle(fontSize: 25),
              ),
            ),
          )),
    );
  }
}
