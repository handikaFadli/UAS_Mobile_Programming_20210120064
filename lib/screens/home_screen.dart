import 'package:flutter/material.dart';
import 'package:uas_20210120064/constants/colors.dart';
import 'package:uas_20210120064/screens/course_screen.dart';
import 'package:uas_20210120064/widgets/circle_button.dart';
import 'package:uas_20210120064/widgets/course_grid.dart';
import 'package:uas_20210120064/widgets/menu_button.dart';
import 'package:uas_20210120064/widgets/search_field.dart';
import 'package:uas_20210120064/models/course.dart';
import 'package:uas_20210120064/models/menu.dart';

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
                GridView.builder(
                  itemCount: menuList.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 1.1,
                  ),
                  itemBuilder: (context, index) {
                    return MenuButton(
                      menu: menuList[index],
                    );
                  },
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Stack(
                    children: [
                      Container(
                        height: 100,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Pallete.grey,
                        ),
                      ),
                      Container(
                        height: 100,
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.symmetric(
                          horizontal: 30,
                          vertical: 15,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "15% OFF",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Pallete.blue,
                                  ),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  "02 - 23 Mei",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black54,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                                width:
                                    20), // Memberikan jarak antara teks dan gambar
                            Image.asset("assets/images/book-1.png"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 25, left: 12),
                      child: Text(
                        "Courses",
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 27, right: 12),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CourseScreen(),
                            ),
                          );
                        },
                        child: Text(
                          "See All",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Pallete.blue,
                          ),
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
