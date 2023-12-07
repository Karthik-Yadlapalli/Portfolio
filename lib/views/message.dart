import 'package:flutter/material.dart';
import 'package:portfolio/utils/app_theme.dart';

class Message extends StatefulWidget {
  const Message({super.key});

  @override
  State<Message> createState() => _MessageState();
}

class _MessageState extends State<Message> {
  //Fields
  var _name = '';
  var _email = '';
  var _message = '';

  //Controllers
  final TextEditingController _nameCtrl = TextEditingController();
  final TextEditingController _emailCtrl = TextEditingController();
  final TextEditingController _messageCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.transparent,
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * (3 / 8),
            ),
            Container(
              width: MediaQuery.of(context).size.width - 300,
              height: MediaQuery.of(context).size.height - MediaQuery.of(context).size.height * (3 / 8),
              child: Padding(
                padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * (0.5 / 8)),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 14.0),
                      child: Container(
                        height: 55,
                        width: MediaQuery.of(context).size.width * (4 / 8),
                        decoration: BoxDecoration(
                            border: Border.all(color: AppTheme.unSelectedColor),
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white.withOpacity(0.3)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: TextField(
                            controller: _nameCtrl,
                            onSubmitted: (value) {
                              _name = value;
                              setState(() {});
                            },
                            decoration: const InputDecoration(
                                hintText: "Name", focusedBorder: InputBorder.none, enabledBorder: InputBorder.none),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 14.0),
                      child: Container(
                        height: 55,
                        width: MediaQuery.of(context).size.width * (4 / 8),
                        decoration: BoxDecoration(
                            border: Border.all(color: AppTheme.unSelectedColor),
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white.withOpacity(0.3)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: TextField(
                            controller: _emailCtrl,
                            onSubmitted: (value) {
                              _email = value;
                              setState(() {});
                            },
                            decoration: const InputDecoration(
                                hintText: "Email", focusedBorder: InputBorder.none, enabledBorder: InputBorder.none),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 14.0),
                      child: Container(
                        height: MediaQuery.of(context).size.height * (2.5 / 8),
                        width: MediaQuery.of(context).size.width * (4 / 8),
                        decoration: BoxDecoration(
                            border: Border.all(color: AppTheme.unSelectedColor),
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white.withOpacity(0.3)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: TextField(
                            maxLines: 30,
                            controller: _messageCtrl,
                            onSubmitted: (value) {
                              _message = value;
                              setState(() {});
                            },
                            decoration: const InputDecoration(
                                hintText: "Message", focusedBorder: InputBorder.none, enabledBorder: InputBorder.none),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * (4 / 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            child: Container(
                              height: 35,
                              width: 80,
                              decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.6), borderRadius: BorderRadius.circular(10)),
                              child: const Center(
                                child: Text(
                                  "Cancel",
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            child: Container(
                              height: 35,
                              width: 80,
                              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                              child: const Center(child: Text("Send", style: TextStyle(color: Colors.black))),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
