import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
                    const HomeCategoryCard(
                      categoryText: "#CSS",
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const HomeCategoryCard(
                      categoryText: "#UX",
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const HomeCategoryCard(
                      categoryText: "#Swift",
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const HomeCategoryCard(
                      categoryText: "#UI",
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              const HomeCourseCard(
                homeCourseCardImage: "assets/images/home1.png",
                courseDuration: "3 h 30 min",
                courseName: "UI",
                courseDesc: "Advanced mobile interface design",
              ),
              const SizedBox(
                height: 12,
              ),
              const HomeCourseCard(
                homeCourseCardImage: "assets/images/home2.png",
                courseDuration: "3 h 30 min",
                courseName: "HTML",
                courseDesc: "Advanced web applications",
              ),
            ],
          ),
        )),
      ),
    );
  }
}

class HomeCourseCard extends StatelessWidget {
  final String homeCourseCardImage;
  final String courseDuration;
  final String courseName;
  final String courseDesc;

  const HomeCourseCard({
    Key? key,
    required this.homeCourseCardImage,
    required this.courseDuration,
    required this.courseName,
    required this.courseDesc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 297,
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: BorderSide(color: Color(0xFFBEBAB3))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 138,
                  child: Image.asset(homeCourseCardImage),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Align(
                      alignment: Alignment.bottomRight,
                      child: HomeCategoryCard(categoryText: "50")),
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

class HomeCategoryCard extends StatelessWidget {
  final String categoryText;

  const HomeCategoryCard({
    Key? key,
    required this.categoryText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 70,
      height: 25,
      child: Card(
        color: const Color(0xFF65AAEA),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Align(
          alignment: Alignment.center,
          child: Text(
            categoryText,
            textAlign: TextAlign.center,
            style: GoogleFonts.rubik(
              textStyle: Theme.of(context).textTheme.labelSmall,
              fontWeight: FontWeight.w500,
              fontSize: 12.0,
              color: const Color(0xFFF2F2F2),
            ),
          ),
        ),
      ),
    );
  }
}
