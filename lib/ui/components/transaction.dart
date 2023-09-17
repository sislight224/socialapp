import 'package:flutter/material.dart';

class Transaction extends StatelessWidget {
  final String from;
  final String to;
  final String image;
  final String amount;

  Transaction({
    required this.from,
    required this.to,
    required this.image,
    required this.amount,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Center(
          child: Container(
            width: 50, // Adjust the width of the circular image
            height: 50, // Adjust the height of the circular image
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(image),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 5.0,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: RichText(
                text: TextSpan(
                  style: TextStyle(
                    color: Color(0xFF6B5E5E),
                    fontFamily: 'Outfit',
                    fontSize: 1.25 * 16.0,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w400,
                    height: 1.0,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: ' From ',
                    ),
                    TextSpan(
                      text: from,
                      style: TextStyle(
                        color: Color(0xFF0386D0),
                      ),
                    ),
                    TextSpan(
                      text: ' to ',
                    ),
                    TextSpan(
                      text: from,
                      style: TextStyle(
                        color: Color(0xFF0386D0),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              amount,
            )
          ],
        )
      ],
    );
  }
}
