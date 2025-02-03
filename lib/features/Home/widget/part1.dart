import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/common/utils/color/colors.dart';

import '../../../main.dart';
import 'AnimatedNumber.dart';
import 'HoverSizeChangeWidget.dart';
import 'customAppBar.dart';

class part1 extends StatelessWidget {
  const part1({
    super.key,
    required this.w,
    required this.h,
  });

  final double w;
  final double h;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: w,
      height: h * 1.2,
      child: Column(
        children: [
          PreferredSize(
            preferredSize: Size(w, h * 0.15),
            child: CustomAppBar(), // Updated class name
          ),
          SizedBox(
            height: h * 0.05,
          ),
          Padding(
            padding:
                EdgeInsets.only(left: w * 0.1, right: w * .1, top: h * 0.05),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Hi, I am',
                        style: GoogleFonts.lato(
                            textStyle: TextStyle(
                          fontSize: ResponsiveFontsize.responsiveFontSize(
                              context, 24),
                          fontWeight: FontWeight.w500,
                          color: Colorss.TextColor1,
                        ))),
                    Text('Salah Saad',
                        style: GoogleFonts.lato(
                            textStyle: TextStyle(
                          fontSize: ResponsiveFontsize.responsiveFontSize(
                              context, 28),
                          fontWeight: FontWeight.w700,
                          color: Colorss.TextColor1,
                        ))),
                    SizedBox(
                      height: h * .001,
                    ),
                    ShaderMask(
                      shaderCallback: (Rect bounds) {
                        return LinearGradient(
                          colors: [
                            Colorss.ColorOrange1,
                            Colorss.ColorOrange2
                          ], // التدرج اللوني
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ).createShader(bounds);
                      },
                      child: Text(
                        "Flutter Developer",
                        style: GoogleFonts.lato(
                          textStyle: TextStyle(
                            fontSize: ResponsiveFontsize.responsiveFontSize(
                                context, 50),
                            fontWeight: FontWeight.w700,
                            color: Colors
                                .deepOrangeAccent, // يجب أن يكون اللون أبيض لعرض التدرج بشكل صحيح
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          width: w * 0.025,
                          height: w * 0.025,
                          child: SvgPicture.asset('assets/Vector.svg'),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colorss.TextColor1,
                                width: .5,
                              )),
                        ),
                        SizedBox(
                          width: w * 0.02,
                        ),
                        Container(
                          alignment: Alignment.center,
                          child: SvgPicture.asset(
                              'assets/mingcute_linkedin-line.svg'),
                          width: w * 0.025,
                          height: w * 0.025,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colorss.TextColor1,
                                width: .5,
                              )),
                        ),
                        SizedBox(
                          width: w * 0.02,
                        ),
                        Container(
                          width: w * 0.025,
                          height: w * 0.025,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colorss.TextColor1,
                                width: .5,
                              )),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: h * 0.1,
                    ),
                    Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          // ignore: sort_child_properties_last
                          child: Text('Hire Me',
                              style: GoogleFonts.lato(
                                textStyle: TextStyle(
                                  fontSize:
                                      ResponsiveFontsize.responsiveFontSize(
                                          context, 16),
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              )),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colorss.ColorOrange1,
                            minimumSize: Size(w * 0.1, h * 0.08),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(w * 0.008),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: w * 0.02,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          // ignore: sort_child_properties_last
                          child: Text('Downlead CV ',
                              style: GoogleFonts.lato(
                                textStyle: TextStyle(
                                  fontSize:
                                      ResponsiveFontsize.responsiveFontSize(
                                          context, 16),
                                  fontWeight: FontWeight.w700,
                                  color: Colorss.TextColor1,
                                ),
                              )),
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(w * 0.1, h * 0.08),
                            backgroundColor: Colors.transparent,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                color: Colorss.TextColor1,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(w * 0.008),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: h * 0.05,
                    ),
                    Container(
                        width: w * 0.4,
                        height: h * .16,
                        alignment: Alignment(0, 0),
                        child: Padding(
                          padding: EdgeInsets.all(w * .01),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  AnimatedNumber(
                                    number: 5,
                                    w: w,
                                    h: h,
                                  ),
                                  Text('Experiences',
                                      style: GoogleFonts.lato(
                                        textStyle: TextStyle(
                                          fontSize: ResponsiveFontsize
                                              .responsiveFontSize(context, 16),
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white,
                                        ),
                                      ))
                                ],
                              ),
                              Container(
                                width: 2, // عرض الخط
                                height: h * .1, // الطول
                                color: Colorss.TextColor1, // لون الخط
                              ),
                              Column(
                                children: [
                                  AnimatedNumber(
                                    number: 20,
                                    w: w,
                                    h: h,
                                  ),
                                  Text('Project done',
                                      style: GoogleFonts.lato(
                                        textStyle: TextStyle(
                                          fontSize: ResponsiveFontsize
                                              .responsiveFontSize(context, 16),
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white,
                                        ),
                                      ))
                                ],
                              ),
                              Container(
                                width: 2, // عرض الخط
                                height: h * .1, // الطول
                                color: Colorss.TextColor1, // لون الخط
                              ),
                              Column(
                                children: [
                                  AnimatedNumber(
                                    number: 50,
                                    w: w,
                                    h: h,
                                  ),
                                  Text('Happy Clients',
                                      style: GoogleFonts.lato(
                                        textStyle: TextStyle(
                                          fontSize: ResponsiveFontsize
                                              .responsiveFontSize(context, 16),
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white,
                                        ),
                                      ))
                                ],
                              ),
                            ],
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(w * 0.01),
                          color: Colorss.ContainerColor1,
                        ))
                  ],
                ),
                Spacer(),
                // Stack(
                //   clipBehavior: Clip.none,
                //   alignment: Alignment.center,
                //   children: [
                //     Container(
                //       width: w * .36,
                //       height: h * .5,
                //       decoration: BoxDecoration(
                //         shape: BoxShape.circle,
                //         color: Colorss.ContainerColor2,
                //       ),
                //     ),
                //     ClipOval(
                //       clipBehavior: Clip.none,
                //       child: Image.asset(
                //         'assets/407894536_2090885297970755_8080805015027691273_n-removebg-preview.png',
                //         width: w * .36,
                //         height: h * .55,
                //         fit: BoxFit.contain,
                //       ),
                //     ),
                //   ],
                // )
                HoverSizeChangeWidget(
                  w: w,
                  h: h,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
