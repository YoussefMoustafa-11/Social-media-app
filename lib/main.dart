import 'package:ahmed_task/Core/routing/router_generation_config.dart';
import 'package:ahmed_task/Core/themes/app_color.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: AppColors.scaffoldBackground,
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.primary,
          primary: AppColors.primary,
          surface: AppColors.surface,
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.surface,
          surfaceTintColor: AppColors.surface,
          foregroundColor: AppColors.darkText,
          elevation: 0,
        ),
      ),
      routerConfig: RouterGenerationConfig.goRouter,
    );
  }
}
