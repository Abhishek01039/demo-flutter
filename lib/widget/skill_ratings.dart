import 'package:demo/utils/colors.dart';
import 'package:demo/utils/text_style.dart';
import 'package:demo/widget/leader_board.dart';
import 'package:demo/widget/slider_track_shape.dart';
import 'package:flutter/material.dart';

class SkillRatings extends StatelessWidget {
  SkillRatings({
    super.key,
    required this.gap,
  });

  final SizedBox gap;
  final data = [
    'Speed',
    'Agility',
    'Dribbling',
    'Ball Handling',
    'Stamina',
    'Coordination',
  ];

  @override
  Widget build(BuildContext context) {
    const white = AppColors.white;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const Row(
            children: [
              Text(
                'Skill Ratings',
                style: AppTextStyle.headingText4,
              ),
              Spacer(),
              _SeeMore(),
            ],
          ),
          gap,
          GridView.builder(
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: (1 / .4),
            ),
            itemBuilder: (context, index) => Row(
              children: [
                const Column(
                  children: [
                    Icon(
                      Icons.alarm_on,
                      color: white,
                    ),
                    Text(
                      '47',
                      style: AppTextStyle.defaultText,
                    ),
                  ],
                ),
                const SizedBox(width: 4),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      data[index],
                      style: AppTextStyle.defaultText,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 3,
                      height: 28,
                      child: SliderTheme(
                        data: SliderThemeData(
                          trackShape: CustomTrackShape(),
                          thumbShape: SliderComponentShape.noThumb,
                        ),
                        child: Slider(
                          value: 7,
                          onChanged: (_) {},
                          max: 10,
                          min: 0,
                          activeColor: Colors.green,
                          inactiveColor: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            itemCount: data.length,
          ),
          gap,
          const Divider(
            color: Colors.grey,
          ),
          const SizedBox(height: 24),
          Row(
            children: [
              Text(
                'Leaderboard',
                style: AppTextStyle.headingText3.copyWith(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Spacer(),
              const _SeeMore(),
            ],
          ),
          const LeaderBoard(),
        ],
      ),
    );
  }
}

class _SeeMore extends StatelessWidget {
  const _SeeMore();

  @override
  Widget build(BuildContext context) {
    const white = AppColors.white;

    return const Row(
      children: [
        Text(
          'See More',
          style: AppTextStyle.bodyText3,
        ),
        SizedBox(width: 4),
        Icon(
          Icons.arrow_forward_ios,
          size: 14,
          color: white,
        ),
      ],
    );
  }
}
