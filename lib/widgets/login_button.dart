import 'package:flutter/material.dart';
import 'package:uas_20210120064/constants/colors.dart';

class ButtonLogin extends StatelessWidget {
  final String labelButton;
  final String routeName;

  const ButtonLogin({
    Key? key,
    required this.labelButton,
    required this.routeName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 370,
      height: 55,
      decoration: BoxDecoration(
        color: Pallete.blue,
        borderRadius: BorderRadius.circular(7),
      ),
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, routeName);
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ).merge(
          ElevatedButton.styleFrom(
            backgroundColor: Pallete.blue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(7),
            ),
          ),
        ),
        child: Text(
          labelButton,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 17,
          ),
        ),
      ),
    );
  }
}
