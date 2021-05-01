import 'package:flutter/material.dart';
import 'widgets/baby_banner.dart';
import 'widgets/modules_block.dart';

class ChemistryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   automaticallyImplyLeading: false,
      //   // leading: IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: () {}),

      //   centerTitle: true,
      //   title: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //     children: [
      //       Row(
      //         children: [
      //           Icon(
      //             Icons.arrow_back_ios,
      //             color: Colors.black,
      //           ),
      //           Text(
      //             'Go back',
      //             style: TextStyle(
      //               color: Colors.black,
      //               fontSize: 12,
      //             ),
      //           ),
      //         ],
      //       ),
      //       Text(
      //         'Chemistry',
      //         style: TextStyle(
      //           color: Colors.black,
      //           fontSize: 24,
      //         ),
      //       ),
      //       Icon(
      //         Icons.bookmark_border,
      //         color: Colors.black54,
      //       ),
      //     ],
      //   ),
      // ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 32.0,
              right: 32,
              top: 12,
              bottom: 32,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                    ),
                    Text(
                      'Go back',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                      ),
                    ),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.start,
                    //   children: [
                    //     Icon(
                    //       Icons.arrow_back_ios,
                    //       color: Colors.black,
                    //     ),
                    //     Text(
                    //       'Go back',
                    //       style: TextStyle(
                    //         color: Colors.black,
                    //         fontSize: 12,
                    //       ),
                    //     ),
                    //   ],
                    // ),
                    SizedBox(width: 50),
                    Text(
                      'Chemistry',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 90),
                    Icon(
                      Icons.bookmark_border,
                      color: Colors.black54,
                    ),
                  ],
                ),
                SizedBox(
                  height: 24,
                ),
                BabyBanner(
                  bannerHeight: 180.0,
                  text:
                      'The best time to start learning is now. Let\'s get started',
                  buttonText: 'Start Learning',
                ),
                SizedBox(
                  height: 20,
                ),
                Text.rich(
                  TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                          text: 'This chemistry ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          )),
                      TextSpan(
                        text:
                            '''course is tailored towards helping both high-school seniors and'''
                            ''' college freshers get started on the fundamentals of chemistry''',
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      'Modules',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(': 15'),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    ModulesBlock(
                      minutesNumber: '45',
                      moduleNumber: '1',
                      moduleTopic: 'Atomic Structure',
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    ModulesBlock(
                      minutesNumber: '45',
                      moduleNumber: '2',
                      moduleTopic: 'Electrochemistry',
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    ModulesBlock(
                      minutesNumber: '80',
                      moduleNumber: '3',
                      moduleTopic: 'Periodic Table',
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    ModulesBlock(
                      minutesNumber: '33',
                      moduleNumber: '4',
                      moduleTopic: 'Thermochemistry',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
