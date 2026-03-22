import 'package:ahmed_task/Core/themes/app_color.dart';
import 'package:ahmed_task/Core/themes/app_text_style.dart';
import 'package:ahmed_task/Core/widgets/user_avatar.dart';
import 'package:flutter/material.dart';

class SuggestedUserItem extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String username;
  final VoidCallback? onSend;
  final VoidCallback? onTap;

  const SuggestedUserItem({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.username,
    this.onSend,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        child: Row(
          children: [
            UserAvatar(imageUrl: imageUrl, size: 48),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: AppTextStyle.labelMedium.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: AppColors.darkText,
                    ),
                  ),
                  Text(
                    username,
                    style: AppTextStyle.labelSmall.copyWith(
                      fontSize: 12,
                      color: AppColors.labelColor,
                    ),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: onSend,
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primary,
                foregroundColor: AppColors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 6,
                ),
                minimumSize: Size.zero,
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                elevation: 0,
              ),
              child: const Text('Send', style: AppTextStyle.labelSmall),
            ),
          ],
        ),
      ),
    );
  }
}
