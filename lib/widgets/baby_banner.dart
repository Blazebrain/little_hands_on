import 'package:flutter/material.dart';

class BabyBanner extends StatelessWidget {
  final text;
  final buttonText;
  final bannerHeight;
  final bottomPadding;
  const BabyBanner({
    Key key,
    this.text,
    this.buttonText,
    this.bannerHeight,
    this.bottomPadding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.indigo[600],
      ),
      height: bannerHeight,
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 28,
                top: 24,
                bottom: 16,
                // right: 24,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      // wordSpacing: 1.5,
                      // letterSpacing: 0.5,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    onPressed: () {},
                    child: Text(
                      buttonText,
                      style: TextStyle(
                        color: Colors.white60,
                      ),
                    ),
                    color: Colors.orange,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 8.0,
              bottom: 8,
              right: 8,
            ),
            child: Image(image: AssetImage('images/baby2.png')),
          ),
        ],
      ),
    );
  }
}
