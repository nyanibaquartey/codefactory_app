
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:codefactory_app/buttons/custom_flat_button.dart';
import 'package:codefactory_app/logout.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            const SizedBox(height: 20,),
            const ProfileScreenMenuItem(
              menuText: "Your Courses",
            ),
            const SizedBox(
              height: 2,
            ),
            const ProfileScreenMenuItem(
              menuText: "Saved",
            ),
            const SizedBox(
              height: 2,
            ),
            const ProfileScreenMenuItem(
              menuText: "Payment",
            ),

             const CustomFlatButton(flatButtonText: "Log out", screen: Logout()),
          ],
        ),
      )),
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
