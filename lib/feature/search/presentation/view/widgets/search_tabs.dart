import 'package:flutter/material.dart';
import 'package:ahmed_task/Core/themes/app_color.dart';

enum SearchFilter { all, posts, people, tags }

class SearchTabs extends StatelessWidget {
  final SearchFilter selectedFilter;
  final Function(SearchFilter) onFilterChanged;

  const SearchTabs({
    super.key,
    required this.selectedFilter,
    required this.onFilterChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        height: 40,
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          color: Colors.grey.shade100,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            SearchTabItem(
              label: 'All',
              filter: SearchFilter.all,
              isSelected: selectedFilter == SearchFilter.all,
              onTap: () => onFilterChanged(SearchFilter.all),
            ),
            SearchTabItem(
              label: 'Posts',
              filter: SearchFilter.posts,
              isSelected: selectedFilter == SearchFilter.posts,
              onTap: () => onFilterChanged(SearchFilter.posts),
            ),
            SearchTabItem(
              label: 'People',
              filter: SearchFilter.people,
              isSelected: selectedFilter == SearchFilter.people,
              onTap: () => onFilterChanged(SearchFilter.people),
            ),
            SearchTabItem(
              label: 'Tags',
              filter: SearchFilter.tags,
              isSelected: selectedFilter == SearchFilter.tags,
              onTap: () => onFilterChanged(SearchFilter.tags),
            ),
          ],
        ),
      ),
    );
  }
}

class SearchTabItem extends StatelessWidget {
  final String label;
  final SearchFilter filter;
  final bool isSelected;
  final VoidCallback onTap;

  const SearchTabItem({
    super.key,
    required this.label,
    required this.filter,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color: isSelected ? Colors.white : Colors.transparent,
            borderRadius: BorderRadius.circular(8),
            boxShadow: isSelected
                ? [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      blurRadius: 4,
                      offset: const Offset(0, 1),
                    ),
                  ]
                : null,
          ),
          child: Center(
            child: Text(
              label,
              style: TextStyle(
                color: isSelected ? AppColors.primary : AppColors.greyText,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
