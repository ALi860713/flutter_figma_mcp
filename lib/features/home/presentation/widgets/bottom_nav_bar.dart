import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const CustomBottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color(0x1A000000),
            offset: Offset(0, -0.5),
            blurRadius: 0,
          ),
        ],
      ),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _NavBarItem(
                  iconPath: 'assets/icons/home_fill.svg',
                  isActive: currentIndex == 0,
                  onTap: () => onTap(0),
                ),
                _NavBarItem(
                  iconPath: 'assets/icons/discover.svg',
                  isActive: currentIndex == 1,
                  onTap: () => onTap(1),
                ),
                _NavBarItem(
                  iconPath: 'assets/icons/cart.svg',
                  isActive: currentIndex == 2,
                  onTap: () => onTap(2),
                ),
                _NavBarItem(
                  iconPath: 'assets/icons/bell.svg',
                  isActive: currentIndex == 3,
                  onTap: () => onTap(3),
                ),
                _NavBarItem(
                  iconPath: 'assets/icons/person.svg',
                  isActive: currentIndex == 4,
                  onTap: () => onTap(4),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _NavBarItem extends StatelessWidget {
  final String iconPath;
  final bool isActive;
  final VoidCallback onTap;

  const _NavBarItem({
    required this.iconPath,
    required this.isActive,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 12,
          horizontal: 26,
        ),
        child: SvgPicture.asset(
          iconPath,
          width: 24,
          height: 24,
          colorFilter: ColorFilter.mode(
            isActive ? Colors.black : Colors.black.withOpacity(0.5),
            BlendMode.srcIn,
          ),
        ),
      ),
    );
  }
} 