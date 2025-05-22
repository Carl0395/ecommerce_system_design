import 'package:flutter/material.dart';

class RatingLabel extends StatelessWidget {
  final String rate;
  final String count;
  final Color? iconColor;
  const RatingLabel({
    super.key,
    required this.rate,
    required this.count,
    this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(-4, 0),
      child: Row(
        children: [
          Icon(Icons.star, color: iconColor ?? Colors.amber),
          Text('$rate '),
          Text('($count)'),
        ],
      ),
    );
  }
}
