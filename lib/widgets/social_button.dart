import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uas_20210120064/constants/colors.dart';

class SocialButton extends StatelessWidget {
  final String iconPath;
  final String label;
  final double horizontalPadding;
  const SocialButton({
    Key? key,
    required this.iconPath,
    required this.label,
    this.horizontalPadding = 100,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {},
      icon: SvgPicture.asset(
        iconPath,
        width: 25,
        // ignore: deprecated_member_use
        color: Pallete.bg,
      ),
      label: Text(
        label,
        style: const TextStyle(
          color: Pallete.bg,
          fontSize: 17,
        ),
      ),
    );
  }
}
