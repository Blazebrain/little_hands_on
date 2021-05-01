import 'package:flutter/material.dart';
import 'chemistry_page.dart';
import 'widgets/baby_banner.dart';
import 'widgets/subject_block.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 28,
                          width: 28,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image(
                            image: AssetImage('images/profilePic2.png'),
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Nice to have you here'),
                            Text(
                              'Michael',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Icon(
                      Icons.short_text,
                      size: 32,
                    )
                  ],
                ),
                SizedBox(
                  height: 24,
                ),
                TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.pink,
                    ),
                    suffix: VerticalDivider(
                      width: 20,
                      thickness: 5,
                    ),
                    suffixIcon: Icon(Icons.expand_more),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    filled: true,
                    fillColor: Colors.grey[200],
                    hintText: 'search for subjects',
                    hintStyle: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 14,
                    ),
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                BabyBanner(
                  bannerHeight: 180.0,
                  text: 'Don\'t know what to learn today? Lets help you!',
                  buttonText: 'Lets suggest',
                  bottomPadding: 24,
                ),
                SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Trending Subjects',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'View more',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        decorationStyle: TextDecorationStyle.solid,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    SubjectBlock(
                      color: Colors.green[100],
                      subjectPicLocation: 'images/chemistry.png',
                      subjectName: 'Chemistry',
                      subjectNameColor: Colors.green[800],
                      onTapped: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return ChemistryPage();
                        }));
                      },
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    SubjectBlock(
                      color: Colors.pink[50],
                      subjectPicLocation: 'images/physics.png',
                      subjectName: 'Physics',
                      subjectNameColor: Colors.pink[800],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    SubjectBlock(
                      color: Colors.pink[50],
                      subjectPicLocation: 'images/maths.jpeg',
                      subjectName: 'Maths',
                      subjectNameColor: Colors.pink[800],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    SubjectBlock(
                      color: Colors.green[100],
                      subjectPicLocation: 'images/english.jpeg',
                      subjectName: 'English',
                      subjectNameColor: Colors.green[800],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
