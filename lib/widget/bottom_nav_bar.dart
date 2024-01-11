import 'package:demo/utils/colors.dart';
import 'package:flutter/material.dart';

class AppBottomNavBar extends StatelessWidget {
  const AppBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    const white = AppColors.white;

    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: white,
      unselectedItemColor: white,
      backgroundColor: Colors.greenAccent,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.newspaper_rounded,
          ),
          label: 'News',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.transit_enterexit,
          ),
          label: 'Training',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.play_circle,
          ),
          label: 'Play',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.filter_tilt_shift_rounded,
          ),
          label: 'Clubs',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person,
          ),
          label: 'Profile',
        ),
      ],
    );
  }
}
