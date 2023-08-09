import 'package:flutter/material.dart';
import 'package:uas_20210120064/pallete.dart';
import 'package:uas_20210120064/screens/course_screen.dart';
import 'package:uas_20210120064/widgets/circle_button.dart';
import 'package:uas_20210120064/widgets/search_field.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

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

  List imgList = [
    'Flutter',
    'React Native',
    'Python',
    'C#',
  ];

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
                ),
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
                  itemCount: imgList.length,
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
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CourseScreen(
                              img: imgList[index],
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
                              padding: EdgeInsets.only(top: 30, bottom: 20),
                              child: Image.asset(
                                "assets/images/${imgList[index]}.png",
                                width: 80,
                                height: 80,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              imgList[index],
                              style: TextStyle(
                                fontSize: 19,
                                fontWeight: FontWeight.w600,
                                color: Colors.black.withOpacity(0.6),
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "55 Videos",
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
                  },
                ),
                SizedBox(height: 40),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Pallete.whiteColor,
        selectedItemColor: Pallete.blue,
        elevation: 0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              weight: 24.0,
            ),
            activeIcon: Icon(
              Icons.home,
              weight: 24.0,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.assignment,
              weight: 24.0,
            ),
            activeIcon: Icon(
              Icons.assignment,
              weight: 24.0,
            ),
            label: 'Courses',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
              weight: 24.0,
            ),
            activeIcon: Icon(
              Icons.favorite,
              weight: 24.0,
            ),
            label: 'Wishlist',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              weight: 24.0,
            ),
            activeIcon: Icon(
              Icons.person,
              weight: 24.0,
            ),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
