import 'package:flutter/material.dart';

class SubjectBlock extends StatelessWidget {
  final color;
  final subjectPicLocation;
  final subjectName;
  final subjectNameColor;
  final onTapped;
  const SubjectBlock({
    Key key,
    this.color,
    this.subjectPicLocation,
    this.subjectName,
    this.subjectNameColor,
    this.onTapped,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapped,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: color,
        ),
        height: 132,
        width: ((MediaQuery.of(context).size.width - 64) / 2) - 10,
        child: Padding(
          padding: const EdgeInsets.only(top: 12.0, bottom: 12),
          child: Column(
            children: [
              SizedBox(
                height: 64,
                child: Image(
                  image: AssetImage(subjectPicLocation),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                subjectName,
                style: TextStyle(
                  color: subjectNameColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
