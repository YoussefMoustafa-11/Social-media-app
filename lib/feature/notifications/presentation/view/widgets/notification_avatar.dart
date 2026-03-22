import 'package:ahmed_task/Core/themes/app_color.dart';
import 'package:flutter/material.dart';

class NotificationAvatar extends StatelessWidget {
  final String imageUrl;
  final double radius;
  final double borderWidth;

  const NotificationAvatar({
    super.key,
    required this.imageUrl,
    this.radius = 24,
    this.borderWidth = 0,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundImage: NetworkImage(imageUrl),
      backgroundColor: AppColors.borderColor,
      child: borderWidth > 0
          ? Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: AppColors.white, width: borderWidth),
              ),
            )
          : null,
    );
  }
}
