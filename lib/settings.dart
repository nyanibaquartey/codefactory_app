import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          "Settings",
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
        child: SingleChildScrollView(

            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Image.asset("assets/images/settings_img.png"),
                const SizedBox(height: 8,),
                const SettingsMenuItem(
                  menuIcon: Icons.notifications,
                  menuTitle: "Notifications",
                  menuSubtitle: "",
                  menuTrailingIcon: Icons.toggle_on_sharp,
                ),
                const SizedBox(height: 8,),
                Text(
                  "Account information",
                  style: GoogleFonts.rubik(
                    textStyle: Theme.of(context).textTheme.headline5,
                    fontWeight: FontWeight.w500,
                    fontSize: 20.0,
                    color: const Color(0xFF3C3A36),
                  ),
                ),
                const SizedBox(height: 8,),
                const SettingsMenuItem(
                  menuTitle: "Name",
                  menuSubtitle: "Juana Antonieta",
                  menuIcon: Icons.account_circle,
                  menuTrailingIcon: Icons.arrow_forward_ios,
                ),
                const SizedBox(height: 8,),
                const SettingsMenuItem(
                    menuTitle: "Email",
                    menuSubtitle: "juanita123@gmail.com",
                    menuIcon: Icons.email_sharp,
                    menuTrailingIcon: Icons.arrow_forward_ios),
                const SizedBox(height: 8,),
                const SettingsMenuItem(
                    menuTitle: "Password",
                    menuSubtitle: "changed 2 weeks ago",
                    menuIcon: Icons.lock,
                    menuTrailingIcon: Icons.arrow_forward_ios)
              ],
            ),

        ),
      ),

      ),

    );
  }
}

class SettingsMenuItem extends StatelessWidget {
  final String menuTitle;
  final String menuSubtitle;
  final IconData menuIcon;
  final IconData menuTrailingIcon;

  const SettingsMenuItem(
      {Key? key,
      required this.menuTitle,
      required this.menuSubtitle,
      required this.menuIcon,
      required this.menuTrailingIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: const BorderSide(color: Color(0xFFBABEB3))),
      leading: CircleAvatar(
          radius: 13,
          backgroundColor: const Color(0xFF65AAEA),
          child: Icon(
            menuIcon,
            color: Colors.white,
            size: 15,
          )),
      title: Text(
        menuTitle,
        style: GoogleFonts.rubik(
          textStyle: Theme.of(context).textTheme.headline5,
          fontWeight: FontWeight.w500,
          fontSize: 20.0,
          color: const Color(0xFF3C3A36),
        ),
      ),
      subtitle: Text(menuSubtitle, style: GoogleFonts.rubik(
        textStyle: Theme.of(context).textTheme.bodyMedium,
        fontWeight: FontWeight.w400,
        fontSize: 14.0,
        color: const Color(0xFF78746D),
      ),),
      trailing: Icon(menuTrailingIcon),
    );
  }
}
