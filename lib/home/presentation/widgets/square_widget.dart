import 'dart:math';
import 'package:flutter/material.dart';

class SquareWidget extends StatelessWidget {
  final String text;
  final String amount;

  const SquareWidget({
    required this.text,
    required this.amount,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: Color.fromARGB(
        100,
        Random().nextInt(200),
        Random().nextInt(200),
        Random().nextInt(200),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.calendar_today, size: 30),
          const SizedBox(width: 20.0),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                text,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('Amount: $amount'),
            ],
          ),
        ],
      ),
    );
  }
}
