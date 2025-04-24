import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../core/theme/app_theme.dart';

class CustomSearchBar extends StatelessWidget {
  final VoidCallback? onTap;

  const CustomSearchBar({
    super.key,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 40,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        margin: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          color: AppColors.secondary,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            Icon(
              Icons.search,
              color: AppColors.greyText,
              size: 24,
            ),
            const SizedBox(width: 12),
            Text(
              'Search',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: AppColors.greyText,
                  ),
            ),
          ],
        ),
      ),
    );
  }
} 