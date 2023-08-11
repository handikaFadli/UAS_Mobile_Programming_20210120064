import 'package:flutter/material.dart';
import 'package:uas_20210120064/models/course.dart';
import 'package:uas_20210120064/constants/colors.dart';
import 'package:uas_20210120064/screens/detail_course.dart';
import 'package:uas_20210120064/widgets/circle_button.dart';

class CourseScreen extends StatefulWidget {
  const CourseScreen({
    Key? key,
  }) : super(key: key);

  @override
  _CourseScreenState createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
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
          "Courses",
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              "List Course",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(vertical: 10),
              separatorBuilder: (_, __) {
                return const SizedBox(
                  height: 10,
                );
              },
              shrinkWrap: true,
              itemCount: courses.length,
              itemBuilder: (_, int index) {
                return ListTile(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailCourseScreen(
                        name: courses[index].name,
                        img: courses[index].thumbnail,
                        video: courses[index].video,
                        author: courses[index].author,
                      ),
                    ),
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      courses[index].thumbnail,
                      height: 60,
                    ),
                  ),
                  title: Text(
                    courses[index].name,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Author: ${courses[index].author}",
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 8),
                      LinearProgressIndicator(
                        value: courses[index].completedPercentage,
                        backgroundColor: Colors.black12,
                        color: Pallete.blue,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
