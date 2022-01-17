import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_ui_1/components/rounded_button.dart';
import 'package:login_ui_1/components/social_icon.dart';
import 'package:login_ui_1/constants.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: size.height,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
                top: 0,
                left: 0,
                child: Image.asset("assets/images/signup_top.png",
                    height: size.height * 0.3)),
            Positioned(
                bottom: 0,
                right: 0,
                child: Image.asset("assets/images/main_bottom.png",
                    height: size.height * 0.2)),
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("SIGN UP ",
                      style: GoogleFonts.roboto(fontWeight: FontWeight.bold)),
                  SizedBox(height: size.height * 0.03),
                  SvgPicture.asset("assets/icons/signup.svg",
                      height: size.height * 0.35),
                  SizedBox(height: size.height * 0.03),
                  Container(
                    width: size.width * 0.8,
                    margin: EdgeInsets.symmetric(vertical: 10),
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(29),
                      color: kPrimaryLightColor,
                    ),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      key: ValueKey('password'),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Enter Email Id",
                        icon: Icon(Icons.person, color: kPrimaryColor),
                        labelStyle: GoogleFonts.roboto(),
                      ),
                    ),
                  ),
                  Container(
                    width: size.width * 0.8,
                    margin: EdgeInsets.symmetric(vertical: 10),
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(29),
                      color: kPrimaryLightColor,
                    ),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      key: ValueKey('password'),
                      obscureText: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Enter Password",
                        icon: Icon(Icons.lock, color: kPrimaryColor),
                        labelStyle: GoogleFonts.roboto(),
                        suffixIcon:
                            Icon(Icons.visibility, color: kPrimaryColor),
                      ),
                    ),
                  ),
                  RoundedButton(
                    text: 'Sign Up',
                    press: () {},
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have an account ? ",
                          style: TextStyle(color: kPrimaryColor)),
                      GestureDetector(
                          onTap: () {},
                          child: Text("LOGIN",
                              style: TextStyle(color: kPrimaryColor))),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: size.height * 0.02),
                    width: size.width * 0.8,
                    child: Row(
                      children: [
                        Expanded(
                          child: Divider(
                            color: Color(0xFFD9D9D9),
                            height: 1.5,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            "OR",
                            style: TextStyle(
                              color: kPrimaryColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            color: Color(0xFFD9D9D9),
                            height: 1.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SocialIcon(iconSrc: 'assets/icons/facebook.svg'),
                      SocialIcon(iconSrc: 'assets/icons/twitter.svg'),
                      SocialIcon(iconSrc: 'assets/icons/google-plus.svg'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
