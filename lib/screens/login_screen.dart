import 'package:flutter/material.dart';
import 'package:uas_20210120064/pallete.dart';
import 'package:uas_20210120064/widgets/login_button.dart';
import 'package:uas_20210120064/widgets/email_field.dart';
import 'package:uas_20210120064/widgets/password_field.dart';
// import 'package:uas_20210120064/widgets/social_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Image.asset(
            'assets/images/bg_2.png',
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height * 0.43,
            width: double.infinity,
            alignment: Alignment.bottomCenter,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              'Welcome',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 35,
                color: Pallete.bg,
                letterSpacing: 1.7,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 23.0, top: 5),
            child: Text(
              'Sign in to continue',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 16,
                color: Pallete.bg,
              ),
            ),
          ),
          const Center(
            child: Column(
              children: [
                SizedBox(height: 35),
                LoginField(),
                SizedBox(height: 20),
                PasswordField(),
                Padding(
                  padding: EdgeInsets.only(right: 25.0, top: 10),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'Forgot password?',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 16,
                        color: Pallete.bg,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 40),
                ButtonLogin(),
                // SizedBox(height: 35),
                // Text(
                //   'or',
                //   style: TextStyle(
                //     fontWeight: FontWeight.w300,
                //     fontSize: 16,
                //     color: Pallete.bg,
                //   ),
                // ),
                // SocialButton(
                //   iconPath: 'assets/svgs/g_logo.svg',
                //   label: 'Continue with Google',
                // ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 50,
        alignment: Alignment.center,
        color: Pallete.whiteColor,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Don\'t have an account?',
              style: TextStyle(
                color: Pallete.bg,
                fontSize: 16,
                fontWeight: FontWeight.w300,
              ),
            ),
            InkWell(
              child: Text(
                ' Sign Up',
                style: TextStyle(
                  color: Pallete.blue,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
