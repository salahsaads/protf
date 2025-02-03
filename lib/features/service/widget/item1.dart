import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/common/utils/color/colors.dart';

import '../../../main.dart'; 



class Item1 extends StatefulWidget {
  const Item1({
    super.key,
    required this.h,
    required this.w,
    required this.title,
    required this.subtitle,
  });

  final double h;
  final double w;
  final String title;
  final String subtitle;

  @override
  _Item1State createState() => _Item1State();
}

class _Item1State extends State<Item1> {
  bool _isHovered = false; // State to detect hover

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          _isHovered = true; // Trigger animation on hover
        });
      },
      onExit: (_) {
        setState(() {
          _isHovered = false; // Trigger animation when hover ends
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300), // Animation duration
        height: widget.h * 0.35,
        width: widget.w / 4,
        padding: EdgeInsets.all(widget.w * .02),
        decoration: BoxDecoration(
          color: Colorss.ContainerColor1,
          borderRadius: BorderRadius.circular(10),
          boxShadow: _isHovered
              ? [
                  BoxShadow(
                    color: Colors.white.withOpacity(0.2),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ]
              : [],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset("assets/2-User.svg"),
            SizedBox(
              height: widget.h * 0.02,
            ),
            Text(
              widget.title,
              style: GoogleFonts.lato(
                textStyle: TextStyle(
                  fontSize: ResponsiveFontsize.responsiveFontSize(context, 24),
                  fontWeight: FontWeight.w700,
                  color: Colorss.TextColor2,
                ),
              ),
            ),
            SizedBox(
              height: widget.h * 0.01,
            ),
            Text(
              textAlign: TextAlign.center,
              widget.subtitle,
              style: GoogleFonts.lato(
                textStyle: TextStyle(
                  fontSize: ResponsiveFontsize.responsiveFontSize(context, 14),
                  fontWeight: FontWeight.w400,
                  color: Colorss.TextColor1,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
