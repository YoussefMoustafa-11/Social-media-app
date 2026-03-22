import 'package:ahmed_task/Core/themes/app_color.dart';
import 'package:ahmed_task/Core/themes/app_spacing.dart';
import 'package:ahmed_task/Core/themes/app_text_style.dart';
import 'package:flutter/material.dart';

class ShareOptionItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color? iconColor;
  final Color? backgroundColor;
  final VoidCallback? onTap;

  const ShareOptionItem({
    super.key,
    required this.icon,
    required this.label,
    this.iconColor,
    this.backgroundColor,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 56,
              height: 56,
              decoration: BoxDecoration(
                color: backgroundColor ?? AppColors.surfaceMuted,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Icon(
                icon,
                color: iconColor ?? AppColors.labelColor,
                size: 24,
              ),
            ),
            const SizedBox(height: AppSpacing.xs),
            Text(
              label,
              style: AppTextStyle.labelSmall.copyWith(
                fontSize: 11,
                fontWeight: FontWeight.w500,
                color: AppColors.labelColor,
              ),
              textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
