import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:servy_app/src/constants/colors.dart';
import 'package:servy_app/src/constants/image_string.dart';
import 'package:servy_app/src/constants/text.dart';
import 'package:servy_app/src/features/authentication/screens/login/login_screen.dart';
import 'package:servy_app/src/features/authentication/screens/signup/signup_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var height = mediaQuery.size.height;
    var brightness = mediaQuery.platformBrightness;
    final isDarkMode = brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: isDarkMode ? kSecondaryColor : kPrimaryColorGreen,
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              tWelcomeScreenImage,
              height: height * 0.5,
            ),
            const Text(
              tWelcomeTitle,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w900,
                fontFamily: 'Montserrat-SemiBold',
              ),
            ),
            const Text(
              tWelcomeSubTitle,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 17,
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () => Get.to(() => const SignUpScreen()),
                    child: Text(
                      "Signup".toUpperCase(),
                    ),
                  ),
                ),
                const SizedBox(width: 10.0),
                Expanded(
                  child: ElevatedButton(
                      onPressed: () => Get.to(() => const LoginScreen()),
                      child: Text(
                        "Login".toUpperCase(),
                      )),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
