import 'package:flutter/material.dart';
import 'package:uas_20210120064/pallete.dart';

import '../screens/home_screen.dart';

class ButtonLogin extends StatelessWidget {
  const ButtonLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Pallete.blue,
        borderRadius: BorderRadius.circular(7),
      ),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomeScreen(),
              ));
        },
        style: ElevatedButton.styleFrom(
          fixedSize: const Size(370, 55),
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        child: const Text(
          'Sign in',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 17,
          ),
        ),
      ),
    );
  }
}
