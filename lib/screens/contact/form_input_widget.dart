import 'package:flutter/material.dart';

class FormInput extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final String hint;
  final int? maxLines;
  final int? maxLength;

  const FormInput({
    Key? key,
    required this.controller,
    required this.label,
    required this.hint,
    this.maxLines,
    this.maxLength,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label),
          TextFormField(
            maxLength: maxLength,
            maxLines: maxLines,
            controller: controller,
            decoration: InputDecoration(hintText: hint),
            validator: (value) {
              if (value != null && value.isNotEmpty) {
                return null;
              } else {
                return 'Required';
              }
            },
          ),
        ],
      ),
    );
  }
}
