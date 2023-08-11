import 'package:flutter/material.dart';
import 'package:uas_20210120064/models/menu.dart';

class MenuButton extends StatefulWidget {
  final Menu menu;
  const MenuButton({
    Key? key,
    required this.menu,
  }) : super(key: key);

  @override
  State<MenuButton> createState() => _MenuButtonState();
}

class _MenuButtonState extends State<MenuButton> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            color: Colors.transparent,
            shape: BoxShape.circle,
            border: Border.all(
              width: 2,
              color: widget.menu.color,
            ),
          ),
          child: Center(
            child: widget.menu.icon,
          ),
        ),
        SizedBox(height: 10),
        Text(
          widget.menu.name,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.black.withOpacity(0.7),
          ),
        ),
      ],
    );
  }
}
