import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PillButton extends StatelessWidget {
  final String label;
  final String iconPath;
  final VoidCallback onTap;
  final bool isActive;

  const PillButton({
    super.key,
    required this.label,
    required this.iconPath,
    required this.onTap,
    this.isActive = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 5,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          border: Border.all(
            color: const Color(0xFFE6E6E6),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
              iconPath,
              width: 20,
              height: 20,
              colorFilter: ColorFilter.mode(
                isActive ? Colors.black : const Color(0xFF828282),
                BlendMode.srcIn,
              ),
            ),
            const SizedBox(width: 4),
            Text(
              label,
              style: Theme.of(context).textTheme.labelLarge?.copyWith(
                    color: isActive ? const Color(0xFF000000) : const Color(0xFF1A1A1A),
                  ),
            ),
          ],
        ),
      ),
    );
  }
} 