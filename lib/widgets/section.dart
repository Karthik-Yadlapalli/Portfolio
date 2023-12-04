// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class PContents extends StatelessWidget {
  final String text;
  final IconData pIcon;
  final Color pcolor;
  final Function() onSelection;

  const PContents({Key? key, required this.text, required this.onSelection, required this.pIcon, required this.pcolor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
          focusColor: Colors.transparent,
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
          hoverColor: Colors.transparent,
          onTap: onSelection,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 35.0, horizontal: 30.0),
            child: Align(
              alignment: Alignment.centerRight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(pIcon, color: pcolor),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      text,
                      style: TextStyle(fontSize: 25, color: pcolor),
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
