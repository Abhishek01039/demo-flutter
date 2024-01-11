import 'package:demo/utils/colors.dart';
import 'package:demo/utils/text_style.dart';
import 'package:flutter/material.dart';

class ScoreBoard extends StatelessWidget {
  const ScoreBoard({super.key});

  @override
  Widget build(BuildContext context) {
    const gap = SizedBox(height: 18);
    const white = AppColors.white;

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(
              child: Column(
                children: [
                  Text(
                    '58',
                    style: AppTextStyle.headingText1
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    'LW',
                    style: AppTextStyle.bodyText,
                  )
                ],
              ),
            ),
            const CircleAvatar(
              radius: 36,
              child: FlutterLogo(),
            ),
            const SizedBox.shrink(),
            const SizedBox.shrink(),
          ],
        ),
        gap,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 36),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              for (final i in [1, 2, 3])

                /// Asset Image
                Image.network(
                  'https://images.spiceworks.com/wp-content/uploads/2021/12/08134343/3D-illustration-of-a-computer-network.jpg',
                  height: 38,
                  width: 50,
                ),
            ],
          ),
        ),
      ],
    );
  }
}
