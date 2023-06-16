import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_izi/theme/app_colors.dart';
import '../../../theme/styles_text.dart';

class MainTextField extends StatefulWidget {
  MainTextField(
      {
        required this.controller,
        required this.hint,
        this.validator,
        this.keyboardType,
        this.textInputAction,
        this.obscureText,
        this.borderColor,
        this.isPasswordField,
        this.prefixIcon,
        this.maxLength,
        this.disabled,
        this.customBorder,
        this.hintStyle,
        this.color
      });

  final TextEditingController controller;
  final FormFieldValidator<String>? validator;
  final String hint;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final bool? obscureText;
  final Color? borderColor;
  final bool? isPasswordField;
  final Widget? prefixIcon;
  final int? maxLength;
  final bool? disabled;
  final InputBorder? customBorder;
  final TextStyle? hintStyle;
  final Color? color;
  @override
  State<MainTextField> createState() => _MainTextFieldState();
}

class _MainTextFieldState extends State<MainTextField> {
  var isObscureTextNotifier = ValueNotifier(false);

  @override
  void initState() {
    super.initState();
    isObscureTextNotifier.value = widget.isPasswordField ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
        valueListenable: isObscureTextNotifier,
        builder: (context, isObscureText, _) {
          return TextFormField(
            cursorColor: Colors.grey,
            keyboardType: widget.keyboardType ?? TextInputType.text,
            textInputAction:
            widget.textInputAction ?? TextInputAction.next,
            obscureText: isObscureText,
            controller: widget.controller,
            validator: widget.validator,
            onSaved: (value) {
              widget.controller.text = value!;
            },
            maxLength: widget.maxLength,
            style: StylesText.body2.copyWith(
              color: AppColors.neutral2,
            ),
            autovalidateMode: AutovalidateMode.disabled,
            enabled: widget.disabled != true,
            decoration: InputDecoration(
              isDense: true,
              prefixIcon: widget.prefixIcon,
              contentPadding:
              EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
              enabledBorder: widget.customBorder ??
                  OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.r),
                    borderSide: BorderSide(
                      color: widget.borderColor ?? AppColors.border,
                      width: 1,
                    ),
                  ),
              focusedBorder: widget.customBorder ??
                  OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.r),
                    borderSide: BorderSide(
                      color: widget.borderColor ?? AppColors.white,
                      width: 1,
                    ),
                  ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.r),
                borderSide: BorderSide(
                  color: widget.borderColor ?? AppColors.primary1,
                  width: 1,
                ),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.r),
                borderSide: BorderSide(
                  color: widget.borderColor ?? AppColors.red,
                  width: 1,
                ),
              ),
              disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.r),
                borderSide: BorderSide(
                  color: widget.borderColor ?? AppColors.border,
                  width: 1,
                ),
              ),
              hintText: widget.hint,
              hintStyle: widget.hintStyle ??
                  StylesText.body2.copyWith(
                    color: AppColors.neutral4,
                  ),
              fillColor: (widget.disabled ?? false)
                  ? AppColors.background1.withOpacity(0.1)
                  : Colors.transparent,
              filled: true,
            ),
          );
        });
  }
}