import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CourseLesson extends StatelessWidget {
  const CourseLesson({Key? key}) : super(key: key);

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
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color(0xFFE6EDF4),
                ),
                padding: const EdgeInsets.all(8),
                height: 194,
                child: Stack(
                  children: [
                    Image.asset("assets/images/course_lesson.png"),
                    const Align(
                      alignment: Alignment.bottomRight,
                      child: Icon(
                        Icons.play_circle_outline_sharp,
                        color: Color(0xFF6D6D78),
                        size: 48,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
              SizedBox(
                height: 26.0,
                child: Text(
                  "Introduction",
                  style: GoogleFonts.rubik(
                    textStyle: Theme.of(context).textTheme.headline5,
                    fontWeight: FontWeight.w500,
                    fontSize: 20.0,
                    color: const Color(0xFF3C3A36),
                  ),
                ),
              ),
              const SizedBox(
                height: 4.0,
              ),
              SizedBox(
                height: 294.0,
                child: Text(
                  "You can launch a new career in web development today by learning HTML & CSS. You don't need a computer science degree or expensive software. All you need is a computer, a bit of time, a lot of determination, and a teacher you trust. Once the form data has been validated on the client-side, it is okay to submit the form.And, since we covered validation in the previous article, we're ready to submit! This article looks at what happens when a user submits a form — where does the data go, and how do we handle it when it gets there? We also look at some of the security concerns.",
                  style: GoogleFonts.rubik(
                    textStyle: Theme.of(context).textTheme.bodyMedium,
                    height: 1.5,
                    fontWeight: FontWeight.w400,
                    fontSize: 14.0,
                    color: const Color(0xFF3C3A36),
                  ),
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
