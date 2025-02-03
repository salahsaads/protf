import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/common/utils/color/colors.dart';

import '../../../main.dart';

class AnimatedNumber extends StatefulWidget {
  const AnimatedNumber({
    super.key,
    required this.h,
    required this.w,
    required this.number,
  });

  final double h;
  final double w;
  final int? number;

  @override
  _AnimatedNumberState createState() => _AnimatedNumberState();
}

class _AnimatedNumberState extends State<AnimatedNumber>
    with SingleTickerProviderStateMixin {
  bool _isHovered = false;
  late AnimationController _controller;
  late Animation<int> _numberAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(seconds: 2), // Animation duration
      vsync: this,
    );

    _numberAnimation = IntTween(begin: widget.number, end: 0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          _isHovered = true;
          _controller.forward(); // Start the animation
        });
      },
      onExit: (_) {
        setState(() {
          _isHovered = false;
          _controller.reverse(); // Reverse the animation (reset to 0)
        });
      },
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return Text(
            '${_numberAnimation.value}+',
            style: GoogleFonts.lato(
              textStyle: TextStyle(
                fontSize: ResponsiveFontsize.responsiveFontSize(context, 24),
                fontWeight: FontWeight.w700,
                color: Colorss.TextColor2, // Text color
              ),
            ),
          );
        },
      ),
    );
  }
}
