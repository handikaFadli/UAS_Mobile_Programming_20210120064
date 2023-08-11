import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uas_20210120064/constants/colors.dart';
import 'package:uas_20210120064/widgets/circle_button.dart';
import 'package:uas_20210120064/widgets/login_button.dart';

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
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 40),
            CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage('assets/images/profile.jpg'),
            ),
            const SizedBox(height: 20),
            itemProfile(
                'Name', 'Mohamad Handika Nurfadli', CupertinoIcons.person),
            const SizedBox(height: 15),
            itemProfile('NIM', '20210120064', Icons.cases_outlined),
            const SizedBox(height: 15),
            itemProfile('Phone', '087784526', CupertinoIcons.phone),
            const SizedBox(height: 15),
            itemProfile(
                'Email', 'handikafadli23@gmail.com', CupertinoIcons.mail),
            const SizedBox(height: 35),
            SizedBox(
              width: double.infinity,
              child: ButtonLogin(
                labelButton: "Logout",
                routeName: "login",
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget itemProfile(String title, String subtitle, IconData iconData) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 5),
            color: Pallete.lightGrey.withOpacity(.2),
            spreadRadius: 2,
            blurRadius: 10,
          ),
        ],
      ),
      child: ListTile(
        title: Text(title),
        subtitle: Text(subtitle),
        leading: Icon(
          iconData,
          color: Pallete.blue,
        ),
        // trailing: Icon(Icons.arrow_forward, color: Colors.grey.shade400),
        tileColor: Colors.white,
      ),
    );
  }
}
