import 'package:ecommerce_system_design/foundation/app_colors.dart';
import 'package:ecommerce_system_design/foundation/app_radii.dart';
import 'package:ecommerce_system_design/foundation/app_spacing.dart';
import 'package:ecommerce_system_design/foundation/app_typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Input extends StatelessWidget {
  final String? hintText;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final TextCapitalization textCapitalization;
  final TextInputAction? textInputAction;
  final void Function(String text)? onChanged;
  final IconData? leadingIcon;
  final Widget? trailingIcon;
  final bool? enabled;
  final bool obscureText;
  final String? error;
  final FocusNode? focusNode;
  final void Function(PointerDownEvent event)? onTapOutside;

  const Input({
    super.key,
    this.hintText,
    this.controller,
    this.keyboardType,
    this.inputFormatters,
    this.textCapitalization = TextCapitalization.none,
    this.leadingIcon,
    this.trailingIcon,
    this.enabled,
    this.obscureText = false,
    this.textInputAction,
    this.onChanged,
    this.error,
    this.focusNode,
    this.onTapOutside,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Container(
              height: 45,
              alignment: Alignment.center,
              padding: EdgeInsets.only(
                left: AppSpacing.horizontalInsideInput,
                right:
                    trailingIcon != null
                        ? 50
                        : AppSpacing.horizontalInsideInput,
              ),
              decoration: BoxDecoration(
                color:
                    error != null ? AppColors.inputError : AppColors.inputColor,
                borderRadius: BorderRadius.circular(AppRadii.sm),
                border: Border.all(
                  width: 0.5,
                  color:
                      error != null
                          ? AppColors.borderRed
                          : AppColors.borderGreen,
                ),
              ),
              child: TextField(
                enabled: enabled,
                keyboardType: keyboardType,
                focusNode: focusNode,
                inputFormatters: inputFormatters,
                textCapitalization: textCapitalization,
                controller: controller,
                obscureText: obscureText,
                onChanged: onChanged,
                onTapOutside:
                    onTapOutside ??
                    (event) => FocusManager.instance.primaryFocus?.unfocus(),
                textInputAction: textInputAction,
                decoration: InputDecoration(
                  hintText: hintText,
                  hintStyle: TextStyle(
                    color:
                        error != null
                            ? AppColors.placeholderError
                            : AppColors.placeholder,
                  ),
                  border: InputBorder.none,
                  isDense: true,
                  icon:
                      leadingIcon != null
                          ? SizedBox(
                            height: 45,
                            width: 12,
                            child: Icon(leadingIcon!, size: 24),
                          )
                          : null,
                  iconColor: AppColors.primaryColor,
                ),
              ),
            ),
            if (trailingIcon != null)
              Positioned(top: 0, bottom: 0, right: 10, child: trailingIcon!),
          ],
        ),
        if (error != null) ...[
          SizedBox(height: 5),
          Text(
            error!,
            style: AppTypography.labelSmall.copyWith(color: Colors.red),
          ),
        ],
      ],
    );
  }
}
