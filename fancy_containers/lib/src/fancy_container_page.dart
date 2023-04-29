import 'package:flutter/material.dart';

class FancyContainer extends StatefulWidget {
  const FancyContainer({
    super.key,
    required this.height,
    required this.width,
    required this.borderRadius,
    required this.fontSize,
    required this.gradientColor1,
    required this.gradientColor2,
    required this.title,
    required this.titleColor,
  });

  final double width;
  final double height;
  final Color gradientColor1;
  final Color gradientColor2;
  final String title;
  final Color titleColor;
  final double fontSize;
  final double borderRadius;

  @override
  State<FancyContainer> createState() => _FancyContainerState();
}

class _FancyContainerState extends State<FancyContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(widget.borderRadius),
        gradient: LinearGradient(
          colors: [widget.gradientColor1, widget.gradientColor2],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Container(
        decoration: const BoxDecoration(),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Text(
            widget.title,
            style: TextStyle(
              color: widget.titleColor,
              fontSize: widget.fontSize,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
