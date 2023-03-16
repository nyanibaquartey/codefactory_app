import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:codefactory_app/utils/coursecard.dart';
import 'package:codefactory_app/utils/category_card.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(13.0),
        child: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ListTile(
                title: Padding(
                  padding: const EdgeInsets.only(bottom: 4.0),
                  child: Text(
                    "Hello,",
                    style: GoogleFonts.rubik(
                      textStyle: Theme.of(context).textTheme.bodyLarge,
                      fontWeight: FontWeight.w400,
                      fontSize: 16.0,
                      color: const Color(0xFF3C3A36),
                    ),
                  ),
                ),
                subtitle: Text(
                  "Juana Antonieta",
                  style: GoogleFonts.rubik(
                    textStyle: Theme.of(context).textTheme.headline3,
                    fontWeight: FontWeight.w700,
                    fontSize: 32.0,
                    color: const Color(0xFF333333),
                  ),
                ),
                trailing: Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: const Color(0xFFBEBAB3))),
                  child: const Icon(
                    Icons.notifications_none_rounded,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: "Search course",
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
              const SizedBox(
                height: 12,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Category:",
                      style: GoogleFonts.rubik(
                        textStyle: Theme.of(context).textTheme.bodyMedium,
                        fontWeight: FontWeight.w400,
                        fontSize: 14.0,
                        color: const Color(0xFF3C3A36),
                      ),
                    ),
                    const CategoryCard(
                      categoryText: "#CSS",
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const CategoryCard(
                      categoryText: "#UX",
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const CategoryCard(
                      categoryText: "#Swift",
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const CategoryCard(
                      categoryText: "#UI",
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 12,
              ),
               CourseCard(
                 optionalWidget: const Align(),
                homeCourseCardImage: "assets/images/home1.png",
                courseDuration: "3 h 30 min",
                courseName: "UI",
                courseDesc: "Advanced mobile interface design",
                 colour: 0xFFF8F2EE,
              ),
              const SizedBox(
                height: 12,
              ),
               CourseCard(
                 optionalWidget: const Align(),
                homeCourseCardImage: "assets/images/home2.png",
                courseDuration: "3 h 30 min",
                courseName: "HTML",
                courseDesc: "Advanced web applications",
                 colour: 0xFFE6EDF4,
              ),
            ],
          ),
        )),
      ),
    );
  }
}
