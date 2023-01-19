import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0.0,
        centerTitle: true,
        leading: const Icon(Icons.arrow_back_ios, color: Colors.black,),
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
              SizedBox(height: 16,),
              Image.asset("assets/images/product_detail.png"),
            const Align(alignment: Alignment.bottomRight ,child: HomeCategoryCard(categoryText: "\$50")),
             const SizedBox(height: 16.0,),
              SizedBox(
                height: 32.0,
                child: Text(
                  "About the course",
                  style: GoogleFonts.rubik(
                    textStyle: Theme.of(context).textTheme.headline4,
                    fontWeight: FontWeight.w500,
                    fontSize: 24.0,
                    color: const Color(0xFF3C3A36),
                  ),
                ),
              ),
              const SizedBox(height: 4.0,),
              SizedBox(
                height: 105.0,
                child: Text(
                  "You can launch a new career in web development today by learning HTML & CSS. You don't need a computer science degree or expensive software. All you need is a computer, a bit of time, a lot of determination, and a teacher you trust.",
                  style: GoogleFonts.rubik(
                    textStyle: Theme.of(context).textTheme.bodyMedium,
                    height: 1.5,
                    fontWeight: FontWeight.w400,
                    fontSize: 14.0,
                    color: const Color(0xFF3C3A36),
                  ),
                ),
              ),
              const SizedBox(height: 24.0,),
              SizedBox(
                height: 26.0,
                child: Text(
                  "Duration",
                  style: GoogleFonts.rubik(
                    textStyle: Theme.of(context).textTheme.headline5,
                    fontWeight: FontWeight.w500,
                    fontSize: 20.0,
                    color: const Color(0xFF3C3A36),
                  ),
                ),
              ),
              const SizedBox(height: 4.0,),
              SizedBox(
                height: 21.0,
                child: Text(
                  "1 h 30 min",
                  style: GoogleFonts.rubik(
                    textStyle: Theme.of(context).textTheme.bodyMedium,
                    fontWeight: FontWeight.w400,
                    fontSize: 14.0,
                    color: const Color(0xFF3C3A36),
                  ),
                ),
              ),
              const SizedBox(height: 53,),
              SizedBox(
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
                    "Add to cart",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.rubik(
                        textStyle:
                        Theme.of(context).textTheme.labelMedium,
                        fontWeight: FontWeight.w500,
                        fontSize: 16.0,
                        color: Colors.white),
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

class HomeCategoryCard extends StatelessWidget {
  final String categoryText;

  const HomeCategoryCard({
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
