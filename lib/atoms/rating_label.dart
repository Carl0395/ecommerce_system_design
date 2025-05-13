import 'package:flutter/material.dart';

class RatingLabel extends StatelessWidget {
  final String rate;
  final String count;
  const RatingLabel({super.key, required this.rate, required this.count});

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(-4, 0),
      child: Row(
        children: [
          Icon(Icons.star, color: Colors.amber),
          Text('$rate '),
          Text('($count)'),
        ],
      ),
    );
  }
}
