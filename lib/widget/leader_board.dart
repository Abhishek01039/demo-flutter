import 'package:demo/utils/colors.dart';
import 'package:demo/utils/text_style.dart';
import 'package:flutter/material.dart';

class LeaderBoard extends StatelessWidget {
  const LeaderBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 4,
      itemBuilder: (context, _) => const _LeaderBoardItem(),
    );
  }
}

class _LeaderBoardItem extends StatelessWidget {
  const _LeaderBoardItem();

  @override
  Widget build(BuildContext context) {
    const white = AppColors.white;

    return const Card(
      color: Color(0xFF03AC13),
      child: ListTile(
        leading: Text(
          '45.',
          style: AppTextStyle.bodyText2,
        ),
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://images.spiceworks.com/wp-content/uploads/2021/12/08134343/3D-illustration-of-a-computer-network.jpg'),
            ),
            SizedBox(width: 8),
            Column(
              children: [
                Text(
                  'Peter Bass',
                  style: AppTextStyle.bodyText,
                ),
                Row(
                  children: [
                    Text(
                      '12,400',
                      style: AppTextStyle.bodyText,
                    ),
                    SizedBox(width: 4),
                    Icon(
                      Icons.access_alarm,
                      color: white,
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
