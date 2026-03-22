import 'package:ahmed_task/Core/themes/app_color.dart';
import 'package:ahmed_task/Core/themes/app_spacing.dart';
import 'package:ahmed_task/Core/themes/app_text_style.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TermsAndPrivacyText extends StatelessWidget {
  final VoidCallback onTermsTap;
  final VoidCallback onPrivacyTap;

  const TermsAndPrivacyText({
    super.key,
    required this.onTermsTap,
    required this.onPrivacyTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          style: AppTextStyle.bodyMedium.copyWith(
            fontSize: 14,
            color: AppColors.labelColor,
          ),
          children: [
            const TextSpan(text: "By clicking Register, you agree to our "),
            TextSpan(
              text: "Terms of Service",
              style: AppTextStyle.linkText.copyWith(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
              recognizer: TapGestureRecognizer()..onTap = onTermsTap,
            ),
            const TextSpan(text: " and "),
            TextSpan(
              text: "Privacy Policy",
              style: AppTextStyle.linkText.copyWith(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
              recognizer: TapGestureRecognizer()..onTap = onPrivacyTap,
            ),
            const TextSpan(text: "."),
          ],
        ),
      ),
    );
  }
}
