import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:servy_app/src/features/authentication/screens/splash_screen/splash_screens.dart';
import 'package:servy_app/src/utils/theme/theme.dart';

void main() {
  runApp(const ServyApp());
}

class ServyApp extends StatelessWidget {
  const ServyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: TApptheme.lightTheme,
      darkTheme: TApptheme.darkTheme,
      home: SplshScreen(),
    );
  }
}
