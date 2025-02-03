import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/common/utils/color/colors.dart';

import 'CustomTextButton.dart';

// Ensure this file contains the necessary imports and definitions.

class CustomAppBar extends StatefulWidget {
  // Updated class name
  const CustomAppBar({super.key});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.only(left: w * 0.1, right: w * .1, top: h * 0.05),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset('assets/logo.svg'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomTextButton(
                isSelected: true,
                text: 'Home',
                onPressed: () {},
              ),
              SizedBox(
                width: w * 0.02,
              ),
              CustomTextButton(
                text: 'Services',
                onPressed: () {},
              ),
              SizedBox(
                width: w * 0.02,
              ),
              CustomTextButton(
                text: 'About me',
                onPressed: () {},
              ),
              SizedBox(
                width: w * 0.02,
              ),
              CustomTextButton(
                text: 'Portfolio',
                onPressed: () {},
              ),
              SizedBox(
                width: w * 0.02,
              ),
              CustomTextButton(
                text: 'Contact me',
                onPressed: () {},
              ),
              SizedBox(
                width: w * 0.1,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(w * .1, h * .08),
                    backgroundColor: Colorss.ColorOrange1,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(w * .01),
                    )),
                onPressed: () {},
                child: Text(
                  'Hire Me',
                  style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}