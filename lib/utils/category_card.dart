import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryCard extends StatelessWidget {
  final String categoryText;

  const CategoryCard({
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