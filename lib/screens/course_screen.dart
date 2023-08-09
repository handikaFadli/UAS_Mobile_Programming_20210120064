import 'package:flutter/material.dart';
import 'package:uas_20210120064/pallete.dart';

// ignore: must_be_immutable
class CourseScreen extends StatefulWidget {
  final String img;
  const CourseScreen({
    Key? key,
    required this.img,
  }) : super(key: key);

  @override
  _CourseScreenState createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Pallete.whiteColor,
        backgroundColor: Pallete.blue,
        elevation: 0,
        centerTitle: true,
        title: Text(
          widget.img,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 0.5,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.notifications,
              size: 28,
              color: Pallete.blue,
            ),
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
                color: Pallete.whiteColor,
                image: DecorationImage(
                  image: AssetImage('assets/images/${widget.img}.png'),
                ),
              ),
              child: Center(
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Pallete.whiteColor,
                    image: DecorationImage(
                      image: AssetImage("assets/images/${widget.img}.png"),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
