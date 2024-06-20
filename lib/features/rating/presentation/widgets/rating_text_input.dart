
import 'package:flutter/material.dart';
import 'package:trust_group_project/cors/Themeing/styles.dart';

class RatingTextInput extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final String hintText;
  final bool? isObscureText;
  final Widget? suffixIcon;
  final Color? backgroundColor;
  final TextEditingController? controller;
  final Function(String?) validator;
  final TextInputType? keyboardType;
  final Function(String)? onChanged;
  const RatingTextInput({
    super.key,
    this.contentPadding,
    this.focusedBorder,
    this.enabledBorder,
    this.inputTextStyle,
    this.hintStyle,
    required this.hintText,
    this.isObscureText,
    this.suffixIcon,
    this.backgroundColor,
    this.controller,
    required this.validator,
    this.keyboardType,
    this.onChanged,
  });

  @override
  Widget build(BuildContextcontext) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: TextFormField(
        onChanged: onChanged,
        keyboardType: keyboardType,
        controller: controller,
        textDirection: TextDirection.rtl,
        decoration: InputDecoration(
          isDense: true,
          contentPadding: contentPadding ??
              EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          focusedBorder: focusedBorder ??
              OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Color.fromARGB(255, 255, 255, 255),
                  width: 1.3,
                ),
                borderRadius: BorderRadius.circular(5),
              ),
          enabledBorder: enabledBorder ??
              OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Color.fromARGB(255, 255, 255, 255),
                  width: 1.3,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
          errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.red,
              width: 1.3,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.red,
              width: 1.3,
            ),
            borderRadius: BorderRadius.circular(16.0),
          ),
          hintStyle: hintStyle ?? TextStyles.font18Text_input_grayBold,
          hintText: hintText,
          suffixIcon: suffixIcon,
          fillColor: backgroundColor ?? Color.fromARGB(245, 255, 255, 255),
          filled: true,
        ),
        obscureText: isObscureText ?? false,
        style: TextStyles.font18Text_input_grayBold,
        validator: (value) {
          return validator(value);
        },
      ),
    );
  }
}
