
import 'package:flutter/material.dart';

import '../../../common/utils/color/colors.dart';

class HoverSizeChangeWidget extends StatefulWidget {
  const HoverSizeChangeWidget({super.key, required this.w, required this.h});

  final double w;
  final double h;

  @override
  _HoverSizeChangeWidgetState createState() => _HoverSizeChangeWidgetState();
}

class _HoverSizeChangeWidgetState extends State<HoverSizeChangeWidget> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          _isHovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          _isHovered = false;
        });
      },
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          AnimatedContainer(
            duration: Duration(
                milliseconds: 300), // Animation duration for smooth resizing
            width: _isHovered
                ? widget.w * .38
                : widget.w * .36, // Change size on hover
            height: _isHovered
                ? widget.h * .62
                : widget.h * .6, // Change size on hover
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colorss.ContainerColor2,
            ),
          ),
          Column(
            children: [
              FittedBox(
                fit: BoxFit.cover,
                child: Image.asset(
                  'assets/407894536_2090885297970755_8080805015027691273_n-removebg-preview.png',
                  width: _isHovered
                      ? widget.w * .4
                      : widget.w * .36, // Image size change
                  height: _isHovered
                      ? widget.h * .75
                      : widget.h * .7, // Image size change
                ),
              ),
              SizedBox(
                height: widget.h * .08,
              ),
            ],
          ),
        ],
      ),
    );
  }
}