import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CourseTests extends StatelessWidget {
  const CourseTests({Key? key}) : super(key: key);

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
          "HTML",
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
                SizedBox(
                  height: 127,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        "Tag for Headers",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.inter(
                          fontSize: 24,
                          textStyle: Theme.of(context).textTheme.headline4,
                        ),
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      Text(
                        "3 0f 11 lessons",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.inter(
                          fontSize: 14,
                          textStyle: Theme.of(context).textTheme.bodyMedium,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const CourseTestsCard(image: "assets/images/course_tests1.png",),
               const SizedBox(height: 16,),
                const CourseTestsCard(image: "assets/images/course_tests2.png")
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CourseTestsCard extends StatelessWidget {

  final String image;

  const CourseTestsCard({
    Key? key, required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 476,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: const BorderSide(
            color: Color(0xFFBEBAB3),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24, 24, 24, 32),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 197,
                child:
                    Image.asset(image),
              ),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                height: 21,
                child: Text(
                  "Quiz 1",
                  style: GoogleFonts.rubik(
                    textStyle:
                        Theme.of(context).textTheme.bodyMedium,
                    fontWeight: FontWeight.w400,
                    fontSize: 14.0,
                    color: const Color(0xFFE3562A),
                  ),
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              SizedBox(
                height: 26,
                child: Text(
                  "Tags For Headers",
                  style: GoogleFonts.rubik(
                    textStyle:
                        Theme.of(context).textTheme.headline5,
                    fontWeight: FontWeight.w500,
                    fontSize: 20.0,
                    color: const Color(0xFF3C3A36),
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              SizedBox(
                height: 63,
                child: Text(
                  "Let’s put your memory on this topic test. Solve tasks and check your knowledge.",
                  style: GoogleFonts.rubik(
                    textStyle:
                        Theme.of(context).textTheme.bodyMedium,
                    fontWeight: FontWeight.w400,
                    fontSize: 14.0,
                    color: const Color(0xFF78746D),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                width: 295,
                height: 56,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                          side: const BorderSide(
                              color: Color(0xffe3562a)))),
                  child: Text(
                    "Begin",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.rubik(
                        textStyle:
                            Theme.of(context).textTheme.labelMedium,
                        fontWeight: FontWeight.w400,
                        fontSize: 14.0,
                        color: const Color(0xFF3C3A36)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
