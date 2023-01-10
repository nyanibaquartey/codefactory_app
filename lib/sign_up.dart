import 'package:codefactory_app/login.dart';
import 'package:codefactory_app/profile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:codefactory_app/buttons/custom_flat_button.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();
  late String email;
  late String password;
  late String name;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      //   elevation: 0.0,
      // ),
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28.0),
            child: SingleChildScrollView(
              child: ConstrainedBox(
                constraints: const BoxConstraints(),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Image.asset('assets/images/signup.png'),
                    const SizedBox(
                      height: 3.0,
                    ),
                    Text(
                      'Sign Up',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.rubik(
                        textStyle: Theme.of(context).textTheme.headline4,
                        fontWeight: FontWeight.w500,
                        fontSize: 24.0,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    Text(
                      'Create your account',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.rubik(
                          textStyle: Theme.of(context).textTheme.bodyMedium,
                          fontWeight: FontWeight.w400,
                          fontSize: 14.0),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      //  controller: emailController,
                      onChanged: (value) => name = value,
                      //email address must contain "@" sign
                      // validator: (value) =>
                      // !value!.contains('@') ? "Invalid Email" : null,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide:
                                  const BorderSide(color: Color(0xFFBABEB3))),
                          hintText: 'Name'),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: emailController,
                      onChanged: (value) => email = value,
                      //email address must contain "@" sign
                      validator: (value) =>
                          !value!.contains('@') ? "Invalid Email" : null,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide:
                                  const BorderSide(color: Color(0xFFBABEB3))),
                          hintText: 'Email'),
                    ),
                    const SizedBox(height: 20.0),
                    TextFormField(
                      controller: passwordController,
                      onChanged: (value) => password = value,
                      //password must be more than 6 characters
                      validator: (value) => value!.length < 6
                          ? "Password  must be above 6 characters"
                          : null,
                      obscureText: _obscureText,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide:
                                const BorderSide(color: Color(0xFFBABEB3))),
                        hintText: 'Password',
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              _obscureText = !_obscureText;
                            });
                          },
                          child: Icon(
                            _obscureText
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: 311,
                      height: 56,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Profile()));
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xffe3562a),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16))),
                        child: Text(
                          "Sign up",
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
                    const CustomFlatButton(
                      flatButtonText: "Log in",
                      screen: Login(),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
