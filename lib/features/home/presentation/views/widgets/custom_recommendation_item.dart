import 'package:daily_digest/core/utils/app_router.dart';
import 'package:daily_digest/core/utils/styles.dart';
import 'package:daily_digest/features/home/presentation/views/widgets/custom_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomRecommendationItem extends StatelessWidget {
  const CustomRecommendationItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kArticleView);
      },
      child: SizedBox(
        height: 160,
        child: Card(
          color: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const CustomImage(),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Every thing is free try to visit this country Every thing is free try to visit this country Every thing is free try to visit this country',
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: Styles.textStyle18.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        'this country make you happy when try to buy anything',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: Styles.textStyle16.copyWith(
                          color: Colors.grey.shade300,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        'published at: 3:20 AM',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: Styles.textStyle14.copyWith(
                          color: Colors.grey.shade500,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
