
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/common/utils/color/colors.dart';
import 'package:portfolio/main.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.isSelected = false,
  });
  final String text;
  final Function()? onPressed;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        text,
        style: GoogleFonts.roboto(
          textStyle: TextStyle(
            fontSize: ResponsiveFontsize.responsiveFontSize(context, 14),
            fontWeight: FontWeight.w600,
            color: isSelected ? Colorss.TextColor2 : Colorss.TextColor1,
          ),
        ),
      ),
    );
  }
}
