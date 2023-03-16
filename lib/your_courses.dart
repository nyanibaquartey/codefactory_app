import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:codefactory_app/utils/coursecard.dart';

class YourCourses extends StatelessWidget {
  const YourCourses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0.0,
        centerTitle: true,
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        title: Text(
          "Your Courses",
          style: GoogleFonts.rubik(
            textStyle: Theme.of(context).textTheme.headline4,
            fontWeight: FontWeight.w500,
            fontSize: 24.0,
            color: const Color(0xFF3C3A36),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CourseCard(
                optionalWidget: const Align(),
                homeCourseCardImage: "assets/images/yourcourses1.png",
                courseDuration: "Left 1 h 20 min ",
                courseName: "Swift",
                courseDesc: "Advanced iOS apps",
                colour: 0xFFF8F2EE,
              ),
              const SizedBox(
                height: 12,
              ),
              CourseCard(
                optionalWidget: const Align(),
                homeCourseCardImage: "assets/images/yourcourses2.png",
                courseDuration: "Left 1 h 20 min ",
                courseName: "Scrum",
                courseDesc: "Advanced iOS apps",
                colour: 0xFFE6EDF4,
              ),
              const SizedBox(
                height: 12,
              ),
              CourseCard(
                optionalWidget: const Align(),
                homeCourseCardImage: "assets/images/yourcourses3.png",
                courseDuration: "Left 1 h 20 min ",
                courseName: "HTML",
                courseDesc: "Advanced web applications",
                colour: 0xFFF8F2EE,
              ),
            ],
          ),
        )),
      ),
    );
  }
}
