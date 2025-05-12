import 'package:ecommerce_system_design/ecommerce_system_design.dart';
import 'package:flutter/material.dart';

class TagHorizontalList extends StatelessWidget {
  final List<String>? tags;
  const TagHorizontalList({super.key, this.tags});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 44,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: tags?.length ?? 0,
        itemBuilder: (context, index) {
          final tag = tags?[index] ?? '';
          return CustomTag(
            label: tag,
            margin: EdgeInsets.symmetric(
              horizontal: index == 0 || index == tags!.length - 1 ? 10 : 5,
              vertical: 2,
            ),
            minWidth: 100,
          );
        },
      ),
    );
  }
}
