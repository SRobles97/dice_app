import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  final Widget child;
  final Color? startColor;
  final Color? endColor;
  final AlignmentGeometry? begin;
  final AlignmentGeometry? end;

  const GradientContainer(
      {Key? key,
      required this.child,
      this.startColor,
      this.endColor,
      this.begin,
      this.end})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            startColor ?? const Color(0xFF7A3B69),
            endColor ?? const Color(0xFF5B2A86),
          ],
          begin: begin ?? Alignment.topCenter,
          end: end ?? Alignment.bottomCenter,
        ),
      ),
      child: child,
    );
  }
}
