import 'package:flutter/material.dart';

import '../../constant/fonts.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hint;
  final String? Function(String?) validate;
  final Icon preIcon;

  final IconButton? sufIcon;

  final bool visibility;

  const CustomTextField({
    super.key, // Use Key? key instead of super.key
    required this.controller,
    required this.hint,
    required this.validate,
    required this.preIcon,
    required this.visibility,
    this.sufIcon,
  }); // Use super(key: key) to call the superclass constructor

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: TextFormField(
        obscureText: visibility,
        validator: validate,
        controller: controller,
        decoration: InputDecoration(
          prefixIcon: preIcon,
          suffixIcon: sufIcon,
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
          hintText: hint,
          hintStyle: CustomFontStyle.normal,
        ),
      ),
    );
  }
}