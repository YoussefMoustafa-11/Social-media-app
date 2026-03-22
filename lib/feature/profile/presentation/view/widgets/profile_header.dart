import 'package:flutter/material.dart';
import '../../../../../Core/themes/app_color.dart';

class ProfileAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ProfileAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(56);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 56,
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.white,
      elevation: 0,
      scrolledUnderElevation: 0,
      centerTitle: true,
      leading: _HeaderButton(
        icon: Icons.arrow_back,
        onPressed: () => Navigator.maybePop(context),
      ),
      title: const Text(
        '@alexrivera',
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: AppColors.darkText,
        ),
      ),
      actions: [
        _HeaderButton(icon: Icons.notifications_outlined, onPressed: () {}),
        _HeaderButton(icon: Icons.more_vert, onPressed: () {}),
      ],
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(1),
        child: Container(color: AppColors.borderColor, height: 1),
      ),
    );
  }
}

class _HeaderButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;

  const _HeaderButton({required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      constraints: const BoxConstraints.tightFor(width: 40, height: 40),
      splashRadius: 20,
      icon: Icon(icon, color: AppColors.darkText, size: 24),
    );
  }
}
