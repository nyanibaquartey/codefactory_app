import 'package:codefactory_app/utils/main_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TestQuestion extends StatelessWidget {
  //TODO: change to stateful widget and set button color upon selection of answer option

  const TestQuestion({Key? key}) : super(key: key);

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
        child: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(
                height: 32,
              ),
              SizedBox(
                height: 26,
                child: Text(
                  "1 0f 20",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.rubik(
                    textStyle: Theme.of(context).textTheme.bodyLarge,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xFF78746D),
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              SizedBox(
                height: 76,
                child: Text(
                  "Which tag for the biggest header?",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.rubik(
                    textStyle: Theme.of(context).textTheme.headline4,
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF3C3A36),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Image.asset("assets/images/test_question_image.png"),
              const SizedBox(
                height: 16,
              ),
              const TestOptionButton(optionLetter: "A.", optionText: "<h5>"),
              const SizedBox(
                height: 16,
              ),
              const TestOptionButton(optionLetter: "B.", optionText: "p"),
              const SizedBox(
                height: 16,
              ),
              const TestOptionButton(optionLetter: "C.", optionText: "<h1>"),
              const SizedBox(
                height: 61,
              ),
              const MainButton(mainButtonText: "Continue")
            ],
          ),
        )),
      ),
    );
  }
}

class TestOptionButton extends StatelessWidget {

  final String optionLetter;
  final String optionText;

  const TestOptionButton({
    Key? key, required this.optionLetter, required this.optionText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
      child: SizedBox(

        height: 58,
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
              side: const BorderSide(
                color: Color(0xFFBEBAB3),
              ),
            ),
          ),
          child: Row(
            children: [
              Text(
                optionLetter,
                textAlign: TextAlign.center,
                style: GoogleFonts.rubik(
                    textStyle: Theme.of(context).textTheme.bodyLarge,
                    fontWeight: FontWeight.w400,
                    fontSize: 16.0,
                    color: const Color(0xFF3C3A36)),
              ),
           const SizedBox(
                width: 16,
              ),
              Text(
               optionText,
                textAlign: TextAlign.center,
                style: GoogleFonts.rubik(
                    textStyle: Theme.of(context).textTheme.bodyLarge,
                    fontWeight: FontWeight.w400,
                    fontSize: 16.0,
                    color: const Color(0xFF3C3A36),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
