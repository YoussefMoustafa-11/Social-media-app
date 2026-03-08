import 'package:flutter/material.dart';
import 'package:ahmed_task/Core/widgets/custom_bottom_navigation_bar.dart';
import 'widgets/search_app_bar.dart';
import 'widgets/search_tabs.dart';
import 'widgets/suggested_users_section.dart';
import 'widgets/recent_searches_section.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  final TextEditingController _searchController = TextEditingController(
    text: 'Design Inspiration',
  );
  SearchFilter _selectedFilter = SearchFilter.all;

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _clearSearch() {
    setState(() {
      _searchController.clear();
    });
  }

  void _handleCancel() {
    // Navigate back or clear search
    Navigator.pop(context);
  }

  void _handleFilterChange(SearchFilter filter) {
    setState(() {
      _selectedFilter = filter;
    });
  }

  void _handleClearAll() {
    // Clear all recent searches
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(const SnackBar(content: Text('Recent searches cleared')));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      body: SafeArea(
        child: Column(
          children: [
            // Search App Bar
            SearchAppBar(
              searchController: _searchController,
              onClear: _clearSearch,
              onCancel: _handleCancel,
            ),

            // Search Tabs
            const SizedBox(height: 12),
            SearchTabs(
              selectedFilter: _selectedFilter,
              onFilterChanged: _handleFilterChange,
            ),
            const SizedBox(height: 16),

            // Content Area
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    // Suggested Users Section
                    Container(
                      color: Colors.white,
                      child: const SuggestedUsersSection(),
                    ),

                    // Divider
                    Container(height: 8, color: Colors.grey.shade100),

                    // Recent Searches Section
                    Container(
                      color: Colors.white,
                      child: RecentSearchesSection(onClearAll: _handleClearAll),
                    ),

                    // Bottom Padding
                    const SizedBox(height: 80),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }
}
