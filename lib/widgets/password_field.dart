import 'package:flutter/material.dart';
import 'package:uas_20210120064/constants/colors.dart';

class PasswordField extends StatelessWidget {
  const PasswordField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxWidth: 370,
      ),
      child: TextField(
        obscureText: true,
        keyboardType: TextInputType.text,
        style: const TextStyle(
          color: Pallete.bg,
        ),
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(25),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Pallete.blue,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          prefixIcon: const Icon(
            Icons.lock,
            color: Pallete.bg,
          ),
          suffixIcon: const Icon(
            Icons.remove_red_eye_sharp,
            color: Pallete.bg,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Pallete.blue,
              width: 3,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          filled: true,
          fillColor: Pallete.whiteColor,
          hintText: 'Password',
          hintStyle: const TextStyle(
            color: Pallete.bg,
          ),
        ),
      ),
    );
  }
}
