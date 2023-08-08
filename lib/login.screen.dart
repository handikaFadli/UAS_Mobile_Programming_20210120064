import 'package:flutter/material.dart';
import 'package:uas_20210120064/pallete.dart';
import 'package:uas_20210120064/widgets/button_login.dart';
import 'package:uas_20210120064/widgets/login_field.dart';
import 'package:uas_20210120064/widgets/social_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 10),
              Image.asset('assets/images/bg.png'),
              const SizedBox(height: 65),
              const Text(
                'Hanzy.',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                ),
              ),
              const SizedBox(height: 50),
              const LoginField(
                hintText: 'Email',
                iconPath: 'assets/svgs/user_icon.svg',
              ),
              const SizedBox(height: 25),
              const LoginField(
                hintText: 'Password',
                iconPath: 'assets/svgs/key_icon.svg',
              ),
              const SizedBox(height: 50),
              const ButtonLogin(),
              const SizedBox(height: 30),
              const Text(
                'or',
                style: TextStyle(fontSize: 17),
              ),
              const SizedBox(height: 10),
              const SocialButton(
                  iconPath: 'assets/svgs/g_logo.svg',
                  label: 'Continue with Google'),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 50,
        alignment: Alignment.center,
        color: Pallete.backgroundColor,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Don\'t have an account?'),
            InkWell(
              child: Text(
                ' Sign Up',
                style: TextStyle(
                  color: Pallete.gradient2,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
