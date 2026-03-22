import 'package:ahmed_task/Core/themes/app_color.dart';
import 'package:ahmed_task/Core/themes/app_spacing.dart';
import 'package:flutter/material.dart';

class StoryProgressBar extends StatelessWidget {
  final List<double> progress;
  final int currentIndex;

  const StoryProgressBar({
    super.key,
    required this.progress,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: AppSpacing.sm),
      child: Row(
        children: List.generate(
          progress.length,
          (index) => Expanded(
            child: Container(
              height: 2,
              margin: EdgeInsets.symmetric(
                horizontal: index == 0 ? 0 : AppSpacing.xs,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(1),
                color: AppColors.overlayLight(0.3),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(1),
                child: index < currentIndex
                    ? Container(color: AppColors.white)
                    : index == currentIndex
                    ? FractionallySizedBox(
                        alignment: Alignment.centerLeft,
                        widthFactor: progress[index],
                        child: Container(color: AppColors.white),
                      )
                    : const SizedBox.expand(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
