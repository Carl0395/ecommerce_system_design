import 'package:ecommerce_system_design/ecommerce_system_design.dart';
import 'package:ecommerce_system_design/foundation/app_colors.dart';
import 'package:ecommerce_system_design/foundation/app_typography.dart';
import 'package:flutter/material.dart';

class TagHorizontalList extends StatelessWidget {
  final List<String>? tags;
  final String? selectedTag;
  final void Function(String tag)? onTag;
  final Color? selectedColor;
  final Color? unSelectedColor;
  final Color? selectedTextColor;
  final Color? unSelectedTextColor;

  const TagHorizontalList({
    super.key,
    this.tags,
    this.selectedTag,
    this.onTag,
    this.selectedColor = AppColors.primaryColor,
    this.unSelectedColor,
    this.selectedTextColor = Colors.white,
    this.unSelectedTextColor,
  });

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
            onTap: () => onTag?.call(tag),
            label: tag,
            color: tag == selectedTag ? selectedColor : unSelectedColor,
            textStyle:
                tag == selectedTag
                    ? AppTypography.label.copyWith(color: selectedTextColor)
                    : AppTypography.label.copyWith(color: unSelectedTextColor),
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
