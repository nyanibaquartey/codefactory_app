import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CourseNotSaved extends StatelessWidget {
  const CourseNotSaved({Key? key}) : super(key: key);

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
          "Not Saved",
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
          child: Padding(
            padding: const EdgeInsets.only(top: 150),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                //image content
                Image.asset("assets/images/course_not_saved.png"),

                const SizedBox(
                  height: 32,
                ),

                //title body text content
                SizedBox(
                  height: 32,
                  child: Text(
                    " Course not saved",
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
                    "Try saving the course \n again in a few minutes",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.rubik(
                      textStyle: Theme.of(context).textTheme.bodyMedium,
                      fontWeight: FontWeight.w400,
                      fontSize: 14.0,
                      color: const Color(0xFF78746D),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),

                //continue button
                SizedBox(
                  width: 311,
                  height: 56,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xffe3562a),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16))),
                    child: Text(
                      "Continue",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.rubik(
                          textStyle: Theme.of(context).textTheme.labelMedium,
                          fontWeight: FontWeight.w500,
                          fontSize: 16.0,
                          color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )),
      ),
    );
  }
}
