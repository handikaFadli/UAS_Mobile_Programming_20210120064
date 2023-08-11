import 'package:flutter/material.dart';
import 'package:uas_20210120064/constants/colors.dart';
import 'package:uas_20210120064/widgets/circle_button.dart';
import 'package:uas_20210120064/widgets/tabview.dart';
import 'package:uas_20210120064/widgets/playlist.dart';
import 'package:uas_20210120064/widgets/description.dart';

// ignore: must_be_immutable
class DetailCourseScreen extends StatefulWidget {
  final String name;
  final String img;
  final String video;
  final String author;
  const DetailCourseScreen({
    Key? key,
    required this.name,
    required this.img,
    required this.video,
    required this.author,
  }) : super(key: key);

  @override
  _DetailCourseScreenState createState() => _DetailCourseScreenState();
}

class _DetailCourseScreenState extends State<DetailCourseScreen> {
  bool isVideoSection = true;
  int _selectedTag = 0;

  void changeTab(int index) {
    setState(() {
      _selectedTag = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        foregroundColor: Pallete.whiteColor,
        backgroundColor: Pallete.blue,
        elevation: 0,
        centerTitle: true,
        title: Text(
          widget.name,
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
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(5),
              width: MediaQuery.of(context).size.width,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Pallete.grey,
                image: DecorationImage(
                  image: AssetImage(widget.img),
                ),
              ),
              child: Center(
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Pallete.grey,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.play_arrow_rounded,
                    color: Pallete.blue,
                    size: 40,
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            Text(
              "${widget.name} Complete Course",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 5),
            Text(
              "Created by ${widget.author}",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.black.withOpacity(0.7),
              ),
            ),
            SizedBox(height: 5),
            Text(
              widget.video,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Colors.black.withOpacity(0.5),
              ),
            ),
            SizedBox(height: 20),
            CustomTabView(changeTab: changeTab, index: _selectedTag),
            _selectedTag == 0 ? PlayList() : const Description(),
          ],
        ),
      ),
    );
  }
}
