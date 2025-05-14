import 'package:ecommerce_system_design/foundation/app_colors.dart';
import 'package:ecommerce_system_design/foundation/app_shadows.dart';
import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  final int? value;
  final VoidCallback? onIncrement;
  final VoidCallback? onDecrement;
  final double? fontSize;

  const Counter({
    super.key,
    this.value,
    this.onIncrement,
    this.onDecrement,
    this.fontSize,
  });

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  late int value = widget.value ?? 5;

  @override
  void didUpdateWidget(covariant Counter oldWidget) {
    super.didUpdateWidget(oldWidget);
    value = widget.value ?? 5;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      padding: EdgeInsets.symmetric(horizontal: 4, vertical: 2),
      decoration: BoxDecoration(
        color: AppColors.secondaryButton,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(width: 0.5, color: AppColors.border),
        boxShadow: [AppShadows.neumorphismShadow, AppShadows.cardShadow],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              setState(() => value++);
              widget.onIncrement?.call();
            },
            child: Text(
              ' + ',
              style: TextStyle(fontSize: widget.fontSize ?? 14),
            ),
          ),
          Text(' $value ', style: TextStyle(fontSize: widget.fontSize ?? 14)),
          GestureDetector(
            onTap: () {
              if (value == 0) return;
              setState(() => value--);
              widget.onDecrement?.call();
            },
            child: Transform.translate(
              offset: Offset(0, -6),
              child: Text(
                ' _ ',
                style: TextStyle(fontSize: widget.fontSize ?? 14),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
