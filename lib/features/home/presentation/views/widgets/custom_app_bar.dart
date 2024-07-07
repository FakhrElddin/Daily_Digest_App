import 'package:daily_digest/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          Assets.logo,
          width: MediaQuery.of(context).size.width * 0.35,
          height: 50,
          fit: BoxFit.fill,
        ),
        const Spacer(),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
            ))
      ],
    );
  }
}
