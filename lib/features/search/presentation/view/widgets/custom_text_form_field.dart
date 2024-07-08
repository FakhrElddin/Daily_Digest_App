import 'package:daily_digest/constants.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key, this.onPressedSearchIcon});

  final Function()? onPressedSearchIcon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        enabledBorder: const OutlineInputBorder(),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: kPrimaryColor,
          ),
        ),
        suffixIcon: IconButton(
          onPressed: onPressedSearchIcon,
          icon: const Icon(
            Icons.search,
            size: 28,
          ),
        ),
        suffixIconColor: Colors.black,
      ),
    );
  }
}
