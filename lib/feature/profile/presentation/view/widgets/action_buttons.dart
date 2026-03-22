import 'package:ahmed_task/Core/themes/app_color.dart';
import 'package:ahmed_task/Core/themes/app_text_style.dart';
import 'package:ahmed_task/Core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class ActionButtons extends StatelessWidget {
  final VoidCallback? onEditProfile;
  final VoidCallback? onShareProfile;

  const ActionButtons({super.key, this.onEditProfile, this.onShareProfile});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomButton(
            buttonText: 'Edit Profile',
            height: 44,
            backgroundColor: AppColors.primary,
            textStyle: AppTextStyle.buttonText.copyWith(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            borderRadius: 8,
            onPressed: onEditProfile,
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: CustomButton(
            buttonText: 'Share Profile',
            height: 44,

            backgroundColor: AppColors.borderColor,
            textStyle: AppTextStyle.buttonText.copyWith(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: AppColors.darkText,
            ),
            borderRadius: 12,
            onPressed: onShareProfile,
          ),
        ),
      ],
    );
  }
}
 