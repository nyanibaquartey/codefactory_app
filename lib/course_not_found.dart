import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CourseNotFound extends StatelessWidget {
  const CourseNotFound({Key? key}) : super(key: key);

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
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              //search box
              SizedBox(
                width: 343,
                height: 56,
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Cooking",
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
              const SizedBox(height: 59,),

              //image content
              Image.asset("assets/images/course_not_found_img.png"),

              const SizedBox(
                height: 32,
              ),

              //title body text content
              SizedBox(
                height: 32,
                child: Text(
                  " Course not found",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.rubik(
                    textStyle: Theme.of(context).textTheme.headline4,
                    fontWeight: FontWeight.w500,
                    fontSize: 24.0,
                    color: const Color(0xFF3C3A36),
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),

              //subtitle body text content
              SizedBox(
                height: 42,
                child: Text(
                  "Try searching the course with \n a different keyword",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.rubik(
                      textStyle: Theme.of(context).textTheme.bodyMedium,
                      fontWeight: FontWeight.w400,
                      fontSize: 14.0,
                      color: const Color(0xFF78746D),
                      height: 1.5),
                ),
              ),
            ]),
      ),
    );
  }
}
