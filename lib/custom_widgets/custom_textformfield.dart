import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  String? labelText;
  TextEditingController? controller;
  TextInputType? textInputType;
  bool? isObsecure = false;
  CustomTextFormField({
    this.labelText,
    this.textInputType,
    this.controller,
    this.isObsecure,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          labelText: labelText ?? '',
          // border: OutlineInputBorder(),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.0),
              borderSide: BorderSide.none // Set the border radius here
              ),
        ),
        keyboardType: textInputType ?? TextInputType.text,
        obscureText: isObsecure ?? false,
      ),
    );
  }
}
