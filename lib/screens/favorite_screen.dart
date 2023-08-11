import 'package:flutter/material.dart';
import 'package:uas_20210120064/constants/colors.dart';
import 'package:uas_20210120064/widgets/circle_button.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 80,
        foregroundColor: Pallete.whiteColor,
        backgroundColor: Pallete.blue,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Favorite",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 0.5,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: CircleButton(icon: Icons.notifications, onPressed: () {}),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Ini Favorite Screen",
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
