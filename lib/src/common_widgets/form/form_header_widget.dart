import 'package:flutter/material.dart';

class FormHeaderWidget extends StatelessWidget {
  const FormHeaderWidget({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
  });

  final String image, title, subTitle;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          image,
          height: size.height * 0.3,
        ),
        Text(
          title,
          style: const TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w900,
            fontFamily: 'Montserrat-SemiBold',
          ),
        ),
        Text(
          subTitle,
          style: const TextStyle(
            fontFamily: 'Poppins',
            fontSize: 17,
          ),
        ),
      ],
    );
  }
}
