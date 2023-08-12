import 'package:flutter/material.dart';
import 'package:uas_20210120064/models/course.dart';
import 'package:uas_20210120064/constants/colors.dart';
import 'package:uas_20210120064/screens/detail_course.dart';

class CourseGrid extends StatelessWidget {
  final Course course;
  const CourseGrid({
    Key? key,
    required this.course,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailCourseScreen(
              name: course.name,
              img: course.thumbnail,
              video: course.video,
              author: course.author,
            ),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Pallete.grey,
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 15, bottom: 5),
              child: Image.asset(
                course.thumbnail,
                width: 70,
                height: 70,
              ),
            ),
            SizedBox(height: 10),
            Text(
              course.name,
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.w600,
                color: Colors.black.withOpacity(0.6),
              ),
            ),
            SizedBox(height: 10),
            Text(
              course.video,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Colors.black.withOpacity(0.5),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
