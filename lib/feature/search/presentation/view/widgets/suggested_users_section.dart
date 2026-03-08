import 'package:flutter/material.dart';
import 'package:ahmed_task/Core/themes/app_color.dart';
import 'suggested_user_card.dart';

class SuggestedUsersSection extends StatelessWidget {
  const SuggestedUsersSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Suggested Users',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: AppColors.darkText,
            ),
          ),
          const SizedBox(height: 12),
          SuggestedUserCard(
            name: 'Alex Rivera',
            username: '@arivera',
            followersCount: '12.4k',
            avatarUrl:
                'https://lh3.googleusercontent.com/aida-public/AB6AXuAvcqIH_o4B6SEyv8dFSwERYSJKupekwM2XnZfAeJ6r964esRX_8rQlJvXd5t_EwuHpPQ5IoV3K4ue-rHlOAl3GkyZPXsC0tv3TKEJCycQwE0SVF_P6ZNlv0mEFUXKmfBvoEu79L2yCiYYaPDUhRGeQeNzaPDccpCabviIUpcGu04dQQVXgpyQnqF1nX-MOXFL_3MCwNO-aUhPmTzH2UdUOM2GcjHxQ0zljPXJ7oJBPcmvP_HZru9iGIEKmO72YO3rjlWRBiltF_6Y',
            onFollowTap: () {
              // Handle follow
            },
          ),
          SuggestedUserCard(
            name: 'Sarah Chen',
            username: '@schen_design',
            followersCount: '8.1k',
            avatarUrl:
                'https://lh3.googleusercontent.com/aida-public/AB6AXuDt2l84pubGUn-oHdchiljKdwPgwh_v4M8avg7tQ5SfbjPJdJYUSegndLFo5uwK1Aq_Wkrb_sQfJ_r2OE1QlopZPkGFAQJ8a0IJDUzN-HDDsPmj3PE2ZJGJ5VrRWf7nb4l4zRQslo9NBh2-pBeuVMOfy1QTs8GTJIYaFhWDHHBvuG5gft7euzYdxPkwxIjQ3-omKAYTFvX7css-7reb4t0fblef8O9RRcSJzSLo357DofY8XfGmcFEzZMJzpFTQzoZX4C8PkkhHgNY',
            onFollowTap: () {
              // Handle follow
            },
          ),
          SuggestedUserCard(
            name: 'Marcus Volkov',
            username: '@m_volkov',
            followersCount: '2.5k',
            isFollowing: true,
            onFollowTap: () {
              // Handle unfollow
            },
          ),
        ],
      ),
    );
  }
}
