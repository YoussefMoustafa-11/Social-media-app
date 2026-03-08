import 'package:flutter/material.dart';
import 'package:ahmed_task/Core/themes/app_color.dart';
import 'package:ahmed_task/Core/widgets/user_avatar.dart';
import 'package:ahmed_task/Core/widgets/custom_button.dart';

class SuggestedUserCard extends StatelessWidget {
  final String name;
  final String username;
  final String followersCount;
  final String? avatarUrl;
  final bool isFollowing;
  final VoidCallback onFollowTap;

  const SuggestedUserCard({
    super.key,
    required this.name,
    required this.username,
    required this.followersCount,
    this.avatarUrl,
    this.isFollowing = false,
    required this.onFollowTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          // Avatar
          avatarUrl != null
              ? UserAvatar(imageUrl: avatarUrl!, size: 48)
              : Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.primary.withOpacity(0.2),
                  ),
                  child: const Icon(
                    Icons.person,
                    color: AppColors.primary,
                    size: 24,
                  ),
                ),
          const SizedBox(width: 12),

          // User Info
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: AppColors.darkText,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  '$username • $followersCount followers',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey.shade500,
                  ),
                ),
              ],
            ),
          ),

          // Follow Button
          CustomButton(
            onPressed: onFollowTap,
            buttonText: isFollowing ? 'Following' : 'Follow',
            backgroundColor: isFollowing
                ? AppColors.primary.withOpacity(0.1)
                : AppColors.primary,
            foregroundColor: isFollowing ? AppColors.primary : Colors.white,
            borderRadius: 20,
            height: 32,
            width: 90,
            textStyle: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
