import 'package:flutter/material.dart';
import 'package:uas_20210120064/constants/colors.dart';

// ignore: must_be_immutable
class PlayList extends StatelessWidget {
  List videoList = [
    "Introduction to Flutter",
    "Installing Flutter on Windows",
    "Setup Emulator",
    "Creating Our First App",
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: videoList.length,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: index == 0 ? Pallete.blue : Pallete.blue.withOpacity(0.6),
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.play_arrow_rounded,
              color: Pallete.whiteColor,
              size: 30,
            ),
          ),
          title: Text(videoList[index]),
          subtitle: Text("20 min 50 sec"),
        );
      },
    );
  }
}
