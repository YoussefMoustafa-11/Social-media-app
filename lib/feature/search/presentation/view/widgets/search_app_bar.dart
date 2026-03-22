import 'package:flutter/material.dart';
import 'package:ahmed_task/Core/themes/app_color.dart';
import 'package:ahmed_task/Core/widgets/custom_text_field.dart';

class SearchAppBar extends StatefulWidget {
  final TextEditingController searchController;
  final VoidCallback onClear;
  final VoidCallback onCancel;

  const SearchAppBar({
    super.key,
    required this.searchController,
    required this.onClear,
    required this.onCancel,
  });

  @override
  State<SearchAppBar> createState() => _SearchAppBarState();
}

class _SearchAppBarState extends State<SearchAppBar> {
  @override
  void initState() {
    super.initState();
    widget.searchController.addListener(_updateState);
  }

  @override
  void dispose() {
    widget.searchController.removeListener(_updateState);
    super.dispose();
  }

  void _updateState() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(color: Colors.grey.shade200, width: 1),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(22),
              ),
              child: CustomTextField(
                controller: widget.searchController,
                hintText: 'Search posts, people, tags...',
                hintStyle: TextStyle(color: Colors.grey.shade400, fontSize: 15),
                style: const TextStyle(fontSize: 15, color: AppColors.darkText),
                prefixIcon: Icons.search,
                suffixIcon: widget.searchController.text.isNotEmpty
                    ? IconButton(
                        icon: Icon(
                          Icons.cancel,
                          color: Colors.grey.shade400,
                          size: 20,
                        ),
                        onPressed: widget.onClear,
                      )
                    : null,
                fillColor: Colors.grey.shade100,
                border: InputBorder.none,
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                borderRadius: 22,
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
              ),
            ),
          ),
          const SizedBox(width: 12),
          GestureDetector(
            onTap: widget.onCancel,
            child: const Text(
              'Cancel',
              style: TextStyle(
                color: AppColors.primary,
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
