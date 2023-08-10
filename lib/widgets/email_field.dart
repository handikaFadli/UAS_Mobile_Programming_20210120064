import 'package:flutter/material.dart';
import 'package:uas_20210120064/constants/colors.dart';

class LoginField extends StatelessWidget {
  const LoginField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxWidth: 370,
      ),
      child: TextField(
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
            Icons.mail,
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
          hintText: 'Email',
          hintStyle: const TextStyle(
            color: Pallete.bg,
          ),
        ),
      ),
    );
  }
}
