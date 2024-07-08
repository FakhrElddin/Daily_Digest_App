import 'package:daily_digest/constants.dart';
import 'package:daily_digest/core/utils/styles.dart';
import 'package:daily_digest/core/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';

class ArticleLinkWidget extends StatelessWidget {
  const ArticleLinkWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 60,
      child: CustomTextButton(
        onPressed: () {},
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        text: 'Article Link',
        backgroundColor: kPrimaryColor,
        textStyle: Styles.textStyle24.copyWith(
          color: Colors.white,
        ),
      ),
    );
  }
}
