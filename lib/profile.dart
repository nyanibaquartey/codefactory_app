
import 'package:codefactory_app/course_saved.dart';
import 'package:codefactory_app/login.dart';
import 'package:codefactory_app/payment.dart';
import 'package:codefactory_app/your_courses.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:codefactory_app/buttons/custom_flat_button.dart';


class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(

          title: Text(
            "Profile",
            style: GoogleFonts.rubik(
              textStyle: Theme.of(context).textTheme.headline4,
              fontWeight: FontWeight.w500,
              fontSize: 24.0,
              color: Colors.black,
            ),
          ),
          leading: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        body: SafeArea(
            child: SingleChildScrollView(
              child: Padding(
          padding: const EdgeInsets.all(16.0),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children:  [
                  const SizedBox(height: 20,),
                  CircleAvatar(
                    radius: 75,
                    backgroundColor: const Color(0xFF65AAEA),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                        radius: 70,
                        child: ClipOval(child: Image.asset("assets/images/profile_img.png"),),
                       // backgroundImage: AssetImage("assets/images/profile_img.png",)
                      ),
                  ),
                  const SizedBox(height: 25,),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const YourCourses()));
                    },
                    child: const ProfileScreenMenuItem(
                      menuText: "Your Courses",
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const CourseSaved()));
                      },
                      child: const ProfileScreenMenuItem(
                       menuText: "Saved",

                   ),
                    ),
                  const SizedBox(
                    height: 15,
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const Payment()));
                    },
                    child: const ProfileScreenMenuItem(
                      menuText: "Payment",
                    ),
                  ),

                   const CustomFlatButton(flatButtonText: "Log out", screen: Login()),
                ],
              ),

        ),
            )),
      ),
    );
  }
}

class ProfileScreenMenuItem extends StatelessWidget {
  const ProfileScreenMenuItem({
    Key? key,
    required this.menuText,
  }) : super(key: key);

  final String menuText;



  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: const Color(0xFFBABEB3),
          )),
      padding: const EdgeInsets.fromLTRB(24, 16, 24, 16),
      child: Text(
        menuText,
        textAlign: TextAlign.center,
        style: GoogleFonts.rubik(
          textStyle: Theme.of(context).textTheme.headline4,
          fontWeight: FontWeight.w500,
          fontSize: 24.0,
          color: Colors.black,
        ),
      ),
    );
  }
}
