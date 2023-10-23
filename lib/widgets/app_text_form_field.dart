import 'package:flutter/material.dart';
import 'package:running_app/constants.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField({
    super.key,
    this.hintText,
    this.validator,
    this.onSave,
    this.controller,
    this.onChange,
    this.onSubmitted,
    this.secure = false,
    this.focusNode,
    this.onEditingComplete,
    this.textInputAction,
    this.enable = true,
    this.keyBoardType,
  });
  final bool secure;
  final String? hintText;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final void Function(String?)? onSave;
  final void Function(String)? onChange;
  final void Function(String?)? onSubmitted;
  final FocusNode? focusNode;
  final bool? enable;
  final TextInputType? keyBoardType;

  final VoidCallback? onEditingComplete;
  final TextInputAction? textInputAction;

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadiusDirectional.circular(12),
      child: TextFormField(
        keyboardType: keyBoardType,
        obscureText: secure,
        enabled: enable,
        onSaved: onSave,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 14,
          fontFamily: 'Lato',
          fontWeight: FontWeight.w600,
        ),
        onFieldSubmitted: onSubmitted,
        onChanged: onChange,
        controller: controller,
        focusNode: focusNode,
        onEditingComplete: onEditingComplete,
        textInputAction: textInputAction,
        validator: validator,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(
            color: kWhiteColor,
            fontSize: 14,
            fontFamily: 'Lato',
            fontWeight: FontWeight.w600,
          ),
          fillColor: kSecoundColor,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4.0),
            borderSide: const BorderSide(
              color: Color(0xCC7B61FF),
            ),
          ),
          enabledBorder: inputBorder(
            const Color(0xCC7B61FF),
          ),
          focusedBorder: inputBorder(
            const Color(0xCC7B61FF),
          ),
          errorBorder: inputBorder(Colors.red),
          focusedErrorBorder: inputBorder(Colors.red),
          disabledBorder: inputBorder(
            const Color(0xCC7B61FF),
          ),
        ),
      ),
    );
  }
}

InputBorder inputBorder(Color color) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(12.0),
    borderSide: BorderSide(color: color),
  );
}
