import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class InteractiveImage extends StatelessWidget {
  final String image;
  final double width;
  final bool isAnimated;
  final void Function() onPressed;

  const InteractiveImage({
    Key? key,
    required this.image,
    required this.width,
    required this.onPressed,
    this.isAnimated = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isAnimated
        ? Animate(
            effects: const [
              ShakeEffect(
                duration: Duration(milliseconds: 500),
              ),
            ],
            child: Center(
              child: InkWell(
                  onTap: onPressed,
                  child: Image.asset(
                    'assets/images/$image',
                    width: width,
                  )),
            ),
          )
        : Center(
            child: InkWell(
                onTap: onPressed,
                child: Image.asset(
                  'assets/images/$image',
                  width: width,
                )),
          );
  }
}
