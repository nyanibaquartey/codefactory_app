import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:codefactory_app/utils/category_card.dart';
import 'package:codefactory_app/utils/coursecard.dart';

class Results extends StatelessWidget {
  const Results({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  SizedBox(
                    width: 324,
                    height: 56,
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "UI",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(
                              color: Color(0xFFBEBAB3),
                            ),
                          ),
                          suffixIcon: const Icon(
                            Icons.search_rounded,
                            color: Color(0xFF3C3A36),
                          )),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              SizedBox(
                height: 32,
                child: Text(
                  "2 Results",
                  style: GoogleFonts.rubik(
                    textStyle: Theme.of(context).textTheme.headline4,
                    fontWeight: FontWeight.w500,
                    fontSize: 24.0,
                    color: const Color(0xFF3C3A36),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              CourseCard(
                optionalWidget: const Align(
                  alignment: Alignment.bottomRight,
                  child: CategoryCard(categoryText: "\$ 50"),
                ),
                homeCourseCardImage: "assets/images/results.png",
                courseDuration: "3 h 30 min",
                courseName: "UI Advanced",
                courseDesc: "Advanced mobile interface design",
                colour: 0xFFE6EDF4,
              ),
              const SizedBox(
                height: 12,
              ),
              CourseCard(
                optionalWidget: const Align(
                  alignment: Alignment.bottomRight,
                  child: CategoryCard(categoryText: "\$ 50"),
                ),
                homeCourseCardImage: "assets/images/home2.png",
                courseDuration: "3 h 30 min",
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
