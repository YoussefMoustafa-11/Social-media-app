import 'package:ahmed_task/Core/themes/app_color.dart';
import 'package:ahmed_task/Core/themes/app_spacing.dart';
import 'package:ahmed_task/Core/themes/app_text_style.dart';
import 'package:flutter/material.dart';

class StoryReplyInput extends StatefulWidget {
  final TextEditingController controller;
  final String? hintText;
  final VoidCallback? onEmojiPressed;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onSubmitted;

  const StoryReplyInput({
    super.key,
    required this.controller,
    this.hintText = 'Send a message...',
    this.onEmojiPressed,
    this.onChanged,
    this.onSubmitted,
  });

  @override
  State<StoryReplyInput> createState() => _StoryReplyInputState();
}

class _StoryReplyInputState extends State<StoryReplyInput> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: AppColors.overlayLight(0.2), width: 1),
        color: AppColors.overlayDark(0.2),
      ),
      child: Row(
        children: [
          // Text Input
          Expanded(
            child: TextField(
              controller: widget.controller,
              onChanged: widget.onChanged,
              onSubmitted: widget.onSubmitted,
              textInputAction: TextInputAction.send,
              style: AppTextStyle.inputText.copyWith(
                color: AppColors.white,
                fontSize: 14,
              ),
              decoration: InputDecoration(
                hintText: widget.hintText,
                hintStyle: AppTextStyle.inputHint.copyWith(
                  color: AppColors.overlayLight(0.6),
                  fontSize: 14,
                ),
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: AppSpacing.xl,
                  vertical: AppSpacing.sm,
                ),
                border: InputBorder.none,
              ),
            ),
          ),
          // Emoji Button
          Padding(
            padding: const EdgeInsets.only(right: AppSpacing.xs),
            child: IconButton(
              onPressed: widget.onEmojiPressed,
              icon: const Icon(
                Icons.sentiment_satisfied_alt,
                color: AppColors.white,
                size: 20,
              ),
              padding: const EdgeInsets.all(AppSpacing.xs),
              constraints: const BoxConstraints(),
            ),
          ),
        ],
      ),
    );
  }
}
