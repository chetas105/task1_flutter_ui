import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';

class SocialIcon extends StatelessWidget {
  final String iconSrc;
  final void Function()? press;
  const SocialIcon({
    Key? key,
    required this.iconSrc,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              width: 1.5,
              color: kPrimaryColor,
            )),
        child: SvgPicture.asset(iconSrc, height: 20, width: 20),
      ),
    );
  }
}
