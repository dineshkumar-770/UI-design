import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:ui_design_task/dropdowlist.dart';

class CardOne extends StatefulWidget {
  const CardOne({Key? key}) : super(key: key);

  @override
  State<CardOne> createState() => _CardOneState();
}

class _CardOneState extends State<CardOne> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.33,
      width: width * 0.9,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'New York',
                      style: TextStyle(
                          fontSize: 25, fontWeight: FontWeight.w900),
                    ),
                    Text(
                      '254 Broadway, New York, NY 10007, USA',
                      style:
                          TextStyle(fontSize: 15, color: Color(0xffb7b7b7)),
                    ),
                  ],
                ),
                CircleAvatar(
                  backgroundColor: Colors.black38,
                  radius: 25,
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: height * 0.075,
            width: width * 0.85,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xfff5f5f5),
              boxShadow: [
                BoxShadow(
                    color: Colors.black54,
                    blurRadius: 5,
                    blurStyle: BlurStyle.outer)
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
              ),
              child: TextField(
                textAlignVertical: TextAlignVertical.bottom,
                textAlign: TextAlign.start,
                cursorColor: Colors.black,
                cursorHeight: 20,
                decoration: InputDecoration(
                    hintStyle: TextStyle(fontSize: 17.5),
                    hintText: 'Search facilities',
                    border: InputBorder.none),
              ),
            ),
          ),
          DropDownList()
        ],
      ),
    );
  }
}
