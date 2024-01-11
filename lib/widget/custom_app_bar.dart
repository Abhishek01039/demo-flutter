import 'package:demo/utils/colors.dart';
import 'package:demo/utils/text_style.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const Color white = AppColors.white;

    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Row(
        children: [
          Text(
            "John Ronaldo",
            style: AppTextStyle.headingText4,
          ),
          Spacer(),
          Icon(
            Icons.settings,
            color: white,
          ),
        ],
      ),
    );
  }
}
