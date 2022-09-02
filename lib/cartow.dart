import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CardTwo extends StatefulWidget {
  List<Color> gradient;
  String status;
  String topTitle;
  CardTwo(
      {required this.gradient, required this.status, required this.topTitle});

  @override
  State<CardTwo> createState() => _CardTwoState();
}

class _CardTwoState extends State<CardTwo> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.topTitle,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          height: height * 0.3,
          width: width * 0.9,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: widget.gradient),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Jul 2022   7:30PM - 9:00PM',
                          style: TextStyle(fontSize: 12, color: Colors.white70),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Shriner Children Bostens\nRs.480 at Rs15/hr',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white70,
                          fontWeight: FontWeight.w900),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      '227 Madison St, New York, NY 10007, USA',
                      style: TextStyle(fontSize: 12, color: Colors.white70),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '10 Miles away Registered Nurse',
                      style: TextStyle(fontSize: 12, color: Colors.white70),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.arrow_forward,
                          size: 20,
                          color: Colors.white,
                        ),
                        Text(
                          widget.status,
                          style: TextStyle(fontSize: 12, color: Colors.white70),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
