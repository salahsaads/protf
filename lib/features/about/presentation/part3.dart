import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:portfolio/common/utils/color/colors.dart';
import 'package:portfolio/main.dart';

class part3 extends StatelessWidget {
  const part3({
    super.key,
    required this.h,
    required this.w,
  });

  final double h;
  final double w;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: h * 1.5,
      width: w,
      color: Colorss.PrimaryColor,
      child: Padding(
        padding: EdgeInsets.only(
            left: w * 0.1, right: w * .1, top: h * 0.05),
        child: Column(
          children: [
            Text(
              'About Me',
              style: GoogleFonts.lato(
                textStyle: TextStyle(
                  fontSize: ResponsiveFontsize.responsiveFontSize(
                      context, 40),
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: h * 0.02),
            Text(
              'Flutter developer passionate about building smooth and powerful apps with a great user experience',
              style: GoogleFonts.lato(
                textStyle: TextStyle(
                  fontSize: ResponsiveFontsize.responsiveFontSize(
                      context, 14),
                  fontWeight: FontWeight.w500,
                  color: Colorss.TextColor1,
                ),
              ),
            ),
            SizedBox(height: h * 0.1),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Stack(
                  clipBehavior:
                      Clip.none, // السماح بخروج الصورة عن الحاوية
                  children: [
                    // Container الرئيسي داخل Stack
                    Container(
                      width: w * 0.35,
                      height: h * 0.87,
                      decoration: BoxDecoration(
                        color: Colorss.ContainerColor1,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(w * 0.1),
                          topRight: Radius.circular(w * 0.1),
                        ),
                      ),
                    ),
                    // الصورة أعلى الحاوية
                    Positioned(
                      top: -h * 0.1, // إخراج الصورة قليلاً للأعلى
                      left: 0,
                      right: 0,
                      child: Image.asset(
                        'assets/407894536_2090885297970755_8080805015027691273_n-removebg-preview.png',
                        // width: w * 0.3, // تحديد عرض للصورة
                        // height: h * 0.3, // تحديد ارتفاع للصورة
                        fit: BoxFit
                            .contain, // التحكم في ملاءمة الصورة
                      ),
                    ),
                  ],
                ),
                // النص بجانب الصورة
                SizedBox(width: w * 0.05),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: h * 0.1),
                      Text(
                        "A Flutter developer crafts seamless applications, blending innovation with usability. Each line of code weaves intuitive interfaces, turning logic into experience.\n"
                        "Their screen is a canvas where widgets and animations create immersive designs. Every keystroke refines functionality, bringing ideas to life.\n"
                        "As both artist and engineer, they solve challenges with precision. Debugging is their battlefield, ensuring every app runs with elegance and efficiency.",
                        textAlign: TextAlign.justify,
                        style: GoogleFonts.lato(
                          textStyle: TextStyle(
                            height: 2,
                            fontSize: ResponsiveFontsize
                                .responsiveFontSize(context, 12),
                            fontWeight: FontWeight.w500,
                            color: Colorss.TextColor1,
                          ),
                        ),
                      ),
                      SizedBox(height: h * 0.15),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(w * 0.1, h * 0.1),
                            backgroundColor: Colorss.ColorOrange1,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(w * 0.008),
                            ),
                          ),
                          onPressed: () {},
                          child: Text('Download CV',
                              style: GoogleFonts.lato(
                                textStyle: TextStyle(
                                  fontSize: ResponsiveFontsize
                                      .responsiveFontSize(
                                          context, 14),
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ))),
                      SizedBox(height: h * 0.2),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: h * 0.1),
          ],
        ),
      ),
    );
  }
}

// Ensure this file contains the necessary imports and definitions.
