import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CourseCard extends StatelessWidget {
  final String homeCourseCardImage;
  final String courseDuration;
  final String courseName;
  final String courseDesc;
  final int colour;
  Widget? optionalWidget;

  CourseCard({
    Key? key,
    required this.homeCourseCardImage,
    required this.courseDuration,
    required this.courseName,
    required this.courseDesc,
    required this.colour,
    this.optionalWidget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 297,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: const BorderSide(
            color: Color(0xFFBEBAB3),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 138,
                  child: Container(
                      decoration: BoxDecoration(
                        color: Color(colour),
                      ),
                      child: Image.asset(homeCourseCardImage)),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  optionalWidget!,
                  Text(
                    courseDuration,
                    style: GoogleFonts.rubik(
                      textStyle: Theme.of(context).textTheme.bodySmall,
                      fontWeight: FontWeight.w500,
                      fontSize: 12.0,
                      color: const Color(0xFF5BA092),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    courseName,
                    style: GoogleFonts.rubik(
                      textStyle: Theme.of(context).textTheme.headline4,
                      fontWeight: FontWeight.w500,
                      fontSize: 24.0,
                      color: const Color(0xFF3C3A36),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    courseDesc,
                    style: GoogleFonts.rubik(
                      textStyle: Theme.of(context).textTheme.bodyMedium,
                      fontWeight: FontWeight.w400,
                      fontSize: 14.0,
                      color: const Color(0xFF3C3A36),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
