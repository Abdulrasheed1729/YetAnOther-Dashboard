import 'package:flutter/material.dart';

class QuantityCard extends StatelessWidget {
  const QuantityCard({
    Key? key,
    required this.text,
    this.textColor = Colors.black,
    required this.secondaryText,
  }) : super(key: key);
  final String text;
  final Color textColor;
  final String secondaryText;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8.0,
      color: Colors.white,
      child: SizedBox(
        height: 110,
        width: 180,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                text,
                style: TextStyle(
                  color: textColor,
                  fontSize: 35,
                  fontWeight: FontWeight.w900,
                ),
              ),
              Text(
                secondaryText,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w900,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
