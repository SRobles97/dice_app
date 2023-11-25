import 'package:flutter/material.dart';

class StyledButton extends StatelessWidget {
  final String text;
  final double width;
  final double height;
  final Color color;
  final Color borderColor;
  final VoidCallback onPressed;

  const StyledButton(
      {Key? key,
      required this.text,
      required this.onPressed,
      this.color = Colors.blue,
      this.borderColor = Colors.blue,
      this.width = 300,
      this.height = 45})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          side: BorderSide(
            color: borderColor,
            width: 2.0,
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
