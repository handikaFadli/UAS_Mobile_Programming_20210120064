import 'package:flutter/material.dart';
import 'package:uas_20210120064/pallete.dart';
import 'package:uas_20210120064/widgets/circle_button.dart';
import 'package:uas_20210120064/widgets/course_grid.dart';
import 'package:uas_20210120064/widgets/menu_button.dart';
import 'package:uas_20210120064/widgets/search_field.dart';
import 'package:uas_20210120064/models/course.dart';

// ignore: must_be_immutable
class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 10),
            decoration: BoxDecoration(
              color: Pallete.blue,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 3, top: 20, bottom: 20),
                      child: Text(
                        "Hello,\nHandika Fadli",
                        style: TextStyle(
                          fontSize: 23,
                          height: 1.5,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.3,
                          // wordSpacing: 2,
                          color: Pallete.whiteColor,
                        ),
                      ),
                    ),
                    CircleButton(
                      icon: Icons.notifications,
                      onPressed: () {},
                    )
                  ],
                ),
                SizedBox(height: 20),
                SearchTextField(),
                SizedBox(height: 10),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 30, left: 15, right: 15),
            child: Column(
              children: [
                MenuButton(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 10),
                      child: Text(
                        "Courses",
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, right: 10),
                      child: Text(
                        "See All",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Pallete.blue,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 25),
                GridView.builder(
                  itemCount: courses.length,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 20,
                    childAspectRatio: 0.8,
                  ),
                  itemBuilder: (context, index) {
                    return CourseGrid(course: courses[index]);
                  },
                ),
                SizedBox(height: 40),
              ],
            ),
          )
        ],
      ),
    );
  }
}
