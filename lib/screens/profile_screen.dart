import 'package:flutter/material.dart';
import 'package:uas_20210120064/constants/colors.dart';
import 'package:uas_20210120064/screens/login_screen.dart';
import 'package:uas_20210120064/widgets/circle_button.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

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
          "Profile",
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
              "Ini Profile Screen",
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
              child: Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}
