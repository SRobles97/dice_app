import 'dart:math';

import 'package:dice_app/widgets/gradient_container.dart';
import 'package:dice_app/widgets/interactive_image.dart';
import 'package:dice_app/widgets/styled_button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _diceImage = 'dice-2.png';
  bool _isRolling = false;

  void _rollDice() {
    final random = Random();
    final randomNumber = random.nextInt(6) + 1;
    setState(() {
      _diceImage = 'dice-$randomNumber.png';
      _isRolling = true;
    });
    Future.delayed(const Duration(milliseconds: 500), () {
      setState(() {
        _isRolling = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GradientContainer(
      startColor: Colors.blue,
      endColor: Colors.purple,
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InteractiveImage(
              image: _diceImage,
              width: 200,
              onPressed: _rollDice,
              isAnimated: _isRolling),
          const SizedBox(height: 20),
          StyledButton(
            text: 'Roll Dice',
            onPressed: _rollDice,
            color: const Color(0xFFF0F6F6),
            borderColor: const Color(0xFFF0F6F6),
          )
        ],
      ),
    ));
  }
}
