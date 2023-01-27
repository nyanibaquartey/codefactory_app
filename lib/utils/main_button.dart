import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainButton extends StatelessWidget {
  final String mainButtonText;

  const MainButton({
    Key? key, required this.mainButtonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 309,
      height: 56,
      child: ElevatedButton(
        onPressed: () {

        },
        style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xffe3562a),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16))),
        child: Text(
         mainButtonText,
          textAlign: TextAlign.center,
          style: GoogleFonts.rubik(
              textStyle:
              Theme.of(context).textTheme.labelMedium,
              fontWeight: FontWeight.w500,
              fontSize: 16.0,
              color: Colors.white),
        ),
      ),
    );
  }
}


