import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomFlatButton extends StatelessWidget {
  final String flatButtonText;

  final Widget screen;

  const CustomFlatButton({
    Key? key,
    required this.flatButtonText,
    required this.screen,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => screen));
      },
      child: Text(
        flatButtonText,
        style: GoogleFonts.rubik(
          textStyle: Theme.of(context).textTheme.button,
          fontWeight: FontWeight.w500,
          fontSize: 14.0,
          color: const Color(0xFF78746D),
        ),
      ),
    );
  }
}
