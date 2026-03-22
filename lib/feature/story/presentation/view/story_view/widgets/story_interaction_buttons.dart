import 'package:ahmed_task/Core/themes/app_color.dart';
import 'package:ahmed_task/Core/themes/app_spacing.dart';
import 'package:flutter/material.dart';

class StoryInteractionButtons extends StatelessWidget {
  final VoidCallback? onLikePressed;
  final VoidCallback? onSendPressed;
  final bool isLiked;

  const StoryInteractionButtons({
    super.key,
    this.onLikePressed,
    this.onSendPressed,
    this.isLiked = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Like Button
        IconButton(
          onPressed: onLikePressed,
          icon: Icon(
            isLiked ? Icons.favorite : Icons.favorite_outline,
            color: isLiked ? AppColors.danger : AppColors.white,
            size: 28,
          ),
          constraints: const BoxConstraints(),
          padding: const EdgeInsets.all(AppSpacing.xs),
        ),
        const SizedBox(width: AppSpacing.md),
        // Send Button
        IconButton(
          onPressed: onSendPressed,
          icon: const Icon(Icons.send, color: AppColors.white, size: 28),
          constraints: const BoxConstraints(),
          padding: const EdgeInsets.all(AppSpacing.xs),
        ),
      ],
    );
  }
}
