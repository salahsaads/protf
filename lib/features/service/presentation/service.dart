
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/common/utils/color/colors.dart';
import 'package:portfolio/features/service/widget/item1.dart';

import '../../../main.dart'; 



class part2 extends StatelessWidget {
  const part2({
    super.key,
    required this.h,
    required this.w,
    required this.platformsWithIndex,
  });

  final double h;
  final double w;
  final List<Map<String, String>> platformsWithIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: h,
        width: w,
        child: Padding(
          padding: EdgeInsets.only(left: w * 0.1, right: w * 0.1, top: h * 0.1),
          child: Column(
            children: [
              Text('Services',
                  style: GoogleFonts.lato(
                    textStyle: TextStyle(
                      fontSize:
                          ResponsiveFontsize.responsiveFontSize(context, 40),
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  )),
              SizedBox(
                height: h * 0.05,
              ),
              Text(
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lato(
                    textStyle: TextStyle(
                      fontSize:
                          ResponsiveFontsize.responsiveFontSize(context, 14),
                      fontWeight: FontWeight.w500,
                      color: Colorss.TextColor1,
                    ),
                  ),
                  'Flutter transforms the development process. Build, test, and deploy beautiful mobile, web, desktop, and embedded experiences from a single codebase'),
              SizedBox(
                height: h * 0.05,
              ),
              GridView.builder(
                  shrinkWrap: true,
                  itemCount: 3,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: h * 0.05,
                      crossAxisSpacing: w * 0.05,
                      childAspectRatio: 1,
                      crossAxisCount: 3),
                  itemBuilder: (context, index) {
                    return Item1(
                        title: platformsWithIndex[index]["platform"]!,
                        subtitle: platformsWithIndex[index]["description"]!,
                        h: h,
                        w: w);
                  })
            ],
          ),
        ),
        decoration: BoxDecoration(
          color: Colorss.PrimaryColor,
        ));
  }
}