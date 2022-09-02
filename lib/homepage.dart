import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ui_design_task/card_one.dart';
import 'package:ui_design_task/cartow.dart';
import 'package:ui_design_task/dropdowlist.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Stack(children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(child: CardOne()),
                  ),
                  Container(
                    height: height * 0.7,
                    width: double.infinity,
                    color: Color(0xfff4f7fc),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 27.5, vertical: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Kickstart your journey',
                            style: TextStyle(
                                fontSize: 22.5, fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 40,
                            child: Text(
                              'Please complete the credentialing to start applying for the shifts',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Color.fromARGB(255, 101, 101, 101)),
                            ),
                          ),
                          Container(
                            height: height * 0.15,
                            width: width,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 2.5,
                                    color: Colors.blueAccent.shade100),
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Submit your credentials',
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.blueAccent.shade100),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        'Upload you documents to get started',
                                        style: TextStyle(fontSize: 10),
                                      )
                                    ],
                                  ),
                                  Text(
                                    'Start',
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.blueAccent.shade100),
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: height * 0.15,
                            width: width,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 2.5,
                                    color: Colors.blueAccent.shade100),
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Documents Verification',
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.blueAccent.shade100),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        'Caregiga team will verify your credentials',
                                        style: TextStyle(fontSize: 10),
                                      )
                                    ],
                                  ),
                                  Icon(
                                    Icons.lock,
                                    color: Colors.blueAccent.shade100,
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: height * 0.15,
                            width: width,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 2.5,
                                    color: Colors.blueAccent.shade100),
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Interview',
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.blueAccent.shade100),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        'A brief interview to understand you \nrequirements',
                                        style: TextStyle(fontSize: 10),
                                      )
                                    ],
                                  ),
                                  Icon(
                                    Icons.lock,
                                    color: Colors.blueAccent.shade100,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      child: CardTwo(
                          topTitle: '',
                          gradient: [
                            Color.fromARGB(255, 55, 126, 58),
                            Color.fromARGB(255, 163, 205, 157)
                          ],
                          status: 'Checkout and compelete shift'),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      child: CardTwo(
                          topTitle: 'Required your attention',
                          gradient: [
                            Color.fromARGB(255, 22, 131, 220),
                            Color.fromARGB(255, 30, 42, 118)
                          ],
                          status: 'Waiting Facuility Acceptance'),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      'My Calender',
                      style: TextStyle(
                          fontSize: 22.5, fontWeight: FontWeight.w600),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: SfCalendar(
                      view: CalendarView.month,
                      monthViewSettings: MonthViewSettings(
                          appointmentDisplayMode:
                              MonthAppointmentDisplayMode.appointment),
                    ),
                  ),
                ],
              ),
              Positioned(
                left: 11,
                top: height * 0.515,
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                          width: 2.5, color: Colors.blueAccent.shade100),
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                    child: Text('1'),
                  ),
                ),
              ),
              Positioned(
                left: 11,
                top: height * 0.695,
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                          width: 2.5, color: Colors.blueAccent.shade100),
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                    child: Text('2'),
                  ),
                ),
              ),
              Positioned(
                left: 11,
                top: height * 0.875,
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                          width: 2.5, color: Colors.blueAccent.shade100),
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                    child: Text('3'),
                  ),
                ),
              ),
              Positioned(
                left: 290,
                top: height * 1.09,
                child: Container(
                  height: 50,
                  width: 80,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(
                    child: Text('Logo'),
                  ),
                ),
              ),
              Positioned(
                left: 290,
                top: height * 1.48,
                child: Container(
                  height: 50,
                  width: 80,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(
                    child: Text('Logo'),
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
