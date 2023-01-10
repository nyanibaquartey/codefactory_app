import 'package:codefactory_app/login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:codefactory_app/onboardingscreen_content_model.dart';
import 'package:codefactory_app/onboardingscreen_content.dart';
import 'package:codefactory_app/slide_dot_indicator.dart';
import 'package:codefactory_app/buttons/custom_flat_button.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late PageController _controller;
  int _slideIndex = 0;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(children: [
            //Skip button
            const Align(
                alignment: Alignment.topRight,
                child: CustomFlatButton(
                  flatButtonText: "Skip",
                  screen: Login(),
                )),

            //Slide content
            Expanded(
              child: PageView.builder(
                controller: _controller,
                onPageChanged: (index) {
                  setState(() {
                    _slideIndex = index;
                  });
                },
                itemCount: slides.length,
                itemBuilder: (context, index) => OnboardingScreenContent(
                  image: slides[index].image,
                  title: slides[index].title,
                  description: slides[index].description,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),

            //Navigation dots for slider
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                  slides.length,
                  (index) => Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: DotIndicator(isActive: index == _slideIndex),
                  ),
                ),
              ],
            ),

            const SizedBox(
              height: 60,
            ),

            //Slide navigation button
            SizedBox(
              width: 311,
              height: 56,
              child: ElevatedButton(
                onPressed: () {
                  _controller.nextPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.ease);
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffe3562a),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16))),
                child: Text(
                  "Next",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.rubik(
                      textStyle: Theme.of(context).textTheme.labelMedium,
                      fontWeight: FontWeight.w500,
                      fontSize: 16.0,
                      color: Colors.white),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
