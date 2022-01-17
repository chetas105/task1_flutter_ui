import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_ui_1/components/rounded_button.dart';
import 'package:login_ui_1/constants.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

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
                child: Image.asset("assets/images/main_top.png",
                    height: size.height * 0.3)),
            Positioned(
                bottom: 0,
                right: 0,
                child: Image.asset("assets/images/login_bottom.png",
                    height: size.height * 0.2)),
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("LOGIN",
                      style: GoogleFonts.roboto(fontWeight: FontWeight.bold)),
                  SizedBox(height: size.height * 0.03),
                  SvgPicture.asset("assets/icons/login.svg",
                      height: size.height * 0.35),
                  SizedBox(height: size.height * 0.05),
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
                    text: 'Login',
                    press: () {},
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account ? ",
                          style: TextStyle(color: kPrimaryColor)),
                      GestureDetector(
                          onTap: () {},
                          child: Text("SIGN UP",
                              style: TextStyle(color: kPrimaryColor))),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
