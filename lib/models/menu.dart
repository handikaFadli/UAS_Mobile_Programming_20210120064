import 'package:flutter/material.dart';
import 'package:uas_20210120064/constants/colors.dart';

class Menu {
  String name;
  Icon icon;
  Color color;

  Menu({
    required this.name,
    required this.icon,
    required this.color,
  });
}

List<Menu> menuList = [
  Menu(
    name: 'Learning Path',
    icon: Icon(
      Icons.assignment_rounded,
      color: Pallete.lightbl,
      size: 30,
    ),
    color: Pallete.lightbl,
  ),
  Menu(
    name: 'Challenge',
    icon: Icon(
      Icons.category_rounded,
      color: Pallete.lightPur,
      size: 30,
    ),
    color: Pallete.lightPur,
  ),
  Menu(
    name: 'Reward',
    icon: Icon(
      Icons.emoji_events_rounded,
      color: Pallete.lightGre,
      size: 30,
    ),
    color: Pallete.lightGre,
  ),
];
