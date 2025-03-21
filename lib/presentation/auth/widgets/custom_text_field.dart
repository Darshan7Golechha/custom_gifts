import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatelessWidget {
  final String hint;
  final String label;
  final String? initialValue;
  final TextEditingController? controller;
  final TextInputType textInputType;
  final int maxLines;
  final bool validate;
  final bool isPassword;
  final bool isEmail;
  final bool enabled;
  final int? maxLength;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;
  final List<TextInputFormatter>? inputFormatters;

  const CustomTextField({
    super.key,
    required this.hint,
    this.isEmail = false,
    required this.label,
    this.initialValue,
    this.controller,
    this.textInputType = TextInputType.text,
    this.maxLines = 1,
    this.validate = true,
    this.isPassword = false,
    this.enabled = true,
    this.maxLength,
    this.onChanged,
    this.validator,
    this.suffixIcon,
    this.prefixIcon,
    this.inputFormatters,
  });

  @override
  Widget build(BuildContext context) {
    final node = FocusScope.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        TextFormField(
          initialValue: initialValue,
          maxLength: maxLength,
          onChanged: (value) => onChanged != null ? onChanged!(value) : null,
          validator: validator,
          enabled: enabled,
          obscureText: isPassword,
          maxLines: maxLines,
          keyboardType: textInputType,
          textInputAction:
              (maxLines) > 1 ? TextInputAction.newline : TextInputAction.next,
          onEditingComplete: () => node.nextFocus(),
          autovalidateMode: AutovalidateMode.onUserInteraction,
          controller: controller,
          textAlignVertical: TextAlignVertical.center,
          inputFormatters: inputFormatters,
          decoration: InputDecoration(
            hintText: hint,
            suffixIcon: suffixIcon,
            prefixIcon: prefixIcon,
            suffixIconConstraints:
                suffixIcon != null ? const BoxConstraints(minWidth: 60) : null,
            prefixIconConstraints:
                prefixIcon != null ? const BoxConstraints(minWidth: 60) : null,
          ),
        ),
      ],
    );
  }
}
