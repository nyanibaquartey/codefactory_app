import 'package:codefactory_app/login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:codefactory_app/onboardingscreen_content_model.dart';
import 'package:codefactory_app/onboardingscreen_content.dart';
import 'package:codefactory_app/slide_dot_indicator.dart';
import 'package:codefactory_app/buttons/custom_flat_button.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key, this.buttonText}) : super(key: key);
  final String? buttonText;

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
   PageController? _controller;
  int _slideIndex = 0;



  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller!.dispose();
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
            CustomButton(
              controller: _controller,
              //set button text based on page
              buttonText: _slideIndex == 2? "Lets Start" : "Next",
            ),
          ]),
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key, this.buttonText, this.press,
    required PageController? controller,
  }) : _controller = controller, super(key: key);
  final String? buttonText;
  final Function()? press;

  final PageController? _controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 311,
      height: 56,
      child: ElevatedButton(
        onPressed: () {
          //routing of screens; route to login page if on last screen
          if(_controller!.page == 2){
            Navigator.push(context, MaterialPageRoute(builder: (context) => const Login()));
          }

          _controller!.nextPage(
              duration: const Duration(milliseconds: 300),
              curve: Curves.ease);
        },
        style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xffe3562a),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16))),
        child: Text(
          buttonText!,
          textAlign: TextAlign.center,
          style: GoogleFonts.rubik(
              textStyle: Theme.of(context).textTheme.labelMedium,
              fontWeight: FontWeight.w500,
              fontSize: 16.0,
              color: Colors.white),
        ),
      ),
    );
  }
}
