import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingScreenContent extends StatelessWidget {
  const OnboardingScreenContent(
      {Key? key,
      required this.image,
      required this.title,
      required this.description})
      : super(key: key);

  final String image;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Image.asset(image),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          width: 330,
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: GoogleFonts.rubik(
              textStyle: Theme.of(context).textTheme.headline4,
              fontWeight: FontWeight.w500,
              fontSize: 24.0,
              color: Colors.black,
            ),
          ),
        ),
        const SizedBox(
          height: 16.0,
        ),
        SizedBox(
          width: 330,
          child: Text(
            description,
            textAlign: TextAlign.center,
            style: GoogleFonts.rubik(
                textStyle: Theme.of(context).textTheme.bodyMedium,
                fontWeight: FontWeight.w400,
                fontSize: 14.0),
          ),
        ),
      ],
    );
  }
}
