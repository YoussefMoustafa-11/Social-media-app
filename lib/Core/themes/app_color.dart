import 'package:flutter/material.dart';

class AppColors {
  // Primary Colors
  static const Color primary = Color(0xFF2F80ED);
  static const Color darkText = Color(0xFF1E293B);
  static const Color greyText = Color(0xFF94A3B8);
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);

  // Surfaces & Backgrounds
  static const Color background = Color(0xFFFFFFFF);
  static const Color surface = Color(0xFFFFFFFF);
  static const Color scaffoldBackground = Color(0xFFF8FAFC);
  static const Color scaffoldBackgroundAlt = Color(0xFFF6F7F8);
  static const Color surfaceMuted = Color(0xFFF1F5F9);
  static const Color borderColor = Color(0xFFE2E8F0);

  // Text Colors
  static const Color headingColor = Color(0xFF0F172A);
  static const Color labelColor = Color(0xFF334155);
  static const Color placeholderColor = Color(0xFFCBD5E1);

  // Semantic Colors
  static const Color success = Color(0xFF16A34A);
  static const Color danger = Color(0xFFDC2626);

  // Overlay Helpers
  static Color overlayDark(double alpha) => black.withValues(alpha: alpha);
  static Color overlayLight(double alpha) => white.withValues(alpha: alpha);

  // Brand Accent Colors (for share options)
  static const Color whatsapp = Color(0xFF25D366);
  static const Color whatsappTint = Color(0x1A25D366);
  static const Color messenger = Color(0xFF0084FF);
  static const Color messengerTint = Color(0x1A0084FF);
  static const Color instagram = Color(0xFFE1306C);
  static const Color instagramTint = Color(0x1AE1306C);
}
