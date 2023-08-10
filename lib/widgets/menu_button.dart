import 'package:flutter/material.dart';
import 'package:uas_20210120064/pallete.dart';

class MenuButton extends StatefulWidget {
  const MenuButton({
    Key? key,
  }) : super(key: key);

  @override
  State<MenuButton> createState() => _MenuButtonState();
}

class _MenuButtonState extends State<MenuButton> {
  List categoryNames = [
    "Category",
    'Classes',
    'Free Course',
    'Book Store',
    'Live Score',
    'LeaderBoard',
  ];

  List<Color> categoryColors = [
    Color(0xFF6FE08D),
    Color(0xFF6FE08D),
    Color(0xFF6FE08D),
    Color(0xFF6FE08D),
    Color(0xFF6FE08D),
    Color(0xFF6FE08D),
  ];

  List<Icon> categoryIcons = [
    Icon(
      Icons.category,
      color: Pallete.whiteColor,
      size: 30,
    ),
    Icon(
      Icons.video_library,
      color: Pallete.whiteColor,
      size: 30,
    ),
    Icon(
      Icons.assignment,
      color: Pallete.whiteColor,
      size: 30,
    ),
    Icon(
      Icons.store,
      color: Pallete.whiteColor,
      size: 30,
    ),
    Icon(
      Icons.play_circle_fill,
      color: Pallete.whiteColor,
      size: 30,
    ),
    Icon(
      Icons.emoji_events,
      color: Pallete.whiteColor,
      size: 30,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: categoryNames.length,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 1.1,
      ),
      itemBuilder: (context, index) {
        return Column(
          children: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                color: categoryColors[index],
                shape: BoxShape.circle,
              ),
              child: Center(
                child: categoryIcons[index],
              ),
            ),
            SizedBox(height: 10),
            Text(
              categoryNames[index],
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.black.withOpacity(0.7),
              ),
            ),
          ],
        );
      },
    );
  }
}
