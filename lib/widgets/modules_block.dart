import 'package:flutter/material.dart';

class ModulesBlock extends StatelessWidget {
  final moduleNumber;
  final minutesNumber;
  final moduleTopic;
  const ModulesBlock({
    Key key,
    this.moduleNumber,
    this.minutesNumber,
    this.moduleTopic,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      width: ((MediaQuery.of(context).size.width - 64) / 2) - 10,
      decoration: BoxDecoration(
        color: Colors.lightBlue[50],
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 16.0,
          top: 24,
          bottom: 8,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Module ' + moduleNumber,
              style: TextStyle(
                color: Colors.red,
                fontSize: 12,
              ),
            ),
            SizedBox(height: 16),
            Text(
              moduleTopic,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 8),
            Text(
              minutesNumber + ' mins',
              style: TextStyle(
                fontSize: 12,
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Icon(
                  Icons.play_circle_filled,
                  color: Colors.indigo[600],
                ),
                SizedBox(
                  width: 4,
                ),
                Text('Start Module'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
