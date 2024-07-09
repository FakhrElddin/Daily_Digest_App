import 'package:daily_digest/constants.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class CustomDotsIndicator extends StatelessWidget {
  const CustomDotsIndicator({
    super.key,
    
    required this.position, required this.dotsCount,
  });

  
  final int dotsCount;
  final int position;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DotsIndicator(
        decorator: DotsDecorator(
          activeColor: kPrimaryColor,
          size: const Size.square(10),
          activeSize: const Size(20, 10),
          spacing: const EdgeInsets.all(2),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        dotsCount: dotsCount,
        position: position,
      ),
    );
  }
}
