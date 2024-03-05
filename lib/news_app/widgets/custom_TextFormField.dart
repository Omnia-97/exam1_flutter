import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 344,
      height: 54,
      child: TextFormField(
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
          filled: true,
          fillColor: const Color(0xFFFFFFFF),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: Color(0xFFD0D5DD),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: Color(0xFFD0D5DD),
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: Color(0xFFD0D5DD),
            ),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: Color(0xFFD0D5DD),
            ),
          ),
          hintText: 'Articles , Video , Audio and More , . . .',
          hintStyle: const TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 16,
            color: Color(0xFF667085),
          ),
          prefixIcon: const Icon(
            Icons.search,
            color: Color(0xFF667085),
            size: 25,
          ),
        ),
      ),
    );
  }
}
