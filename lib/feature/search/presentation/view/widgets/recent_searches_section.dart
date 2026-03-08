import 'package:flutter/material.dart';
import 'package:ahmed_task/Core/themes/app_color.dart';
import 'recent_search_item.dart';

class RecentSearchesSection extends StatelessWidget {
  final VoidCallback onClearAll;

  const RecentSearchesSection({
    super.key,
    required this.onClearAll,
  });

  @override
  Widget build(BuildContext context) {
    final recentSearches = [
      'Minimalist UI trends 2024',
      '#architecture',
      'Figma components',
      'Web3 mobile wallets',
    ];

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Recent Searches',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: AppColors.darkText,
                ),
              ),
              GestureDetector(
                onTap: onClearAll,
                child: Text(
                  'CLEAR ALL',
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey.shade400,
                    letterSpacing: 0.8,
                  ),
                ),
              ),
            ],
          ),
        ),
        ...recentSearches.map(
          (search) => RecentSearchItem(
            searchText: search,
            onTap: () {
              // Handle search tap
            },
            onDelete: () {
              // Handle delete
            },
          ),
        ),
      ],
    );
  }
}
