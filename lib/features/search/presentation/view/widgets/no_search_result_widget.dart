import 'package:daily_digest/constants.dart';
import 'package:daily_digest/core/utils/styles.dart';
import 'package:flutter/material.dart';

class NoSearchResultWidget extends StatelessWidget {
  const NoSearchResultWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.error,
          size: 40,
          color: kPrimaryColor,
        ),
        Text(
          'There are no articles contain this word, try again another word',
          textAlign: TextAlign.center,
          style: Styles.textStyle24.copyWith(
            fontWeight: FontWeight.normal,
          ),
        ),
      ],
    );
  }
}
