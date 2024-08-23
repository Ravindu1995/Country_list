import 'package:country_list/ui/theme/app_colors.dart';
import 'package:country_list/ui/views/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TabHeaderWidget extends ConsumerWidget {
  const TabHeaderWidget(
    this.type, {
    super.key,
  });
  final String type;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () {
        ref.read(sortingCriteriaProvider.notifier).state = type;
      },
      child: Container(
        decoration: BoxDecoration(
            color: ref.watch(sortingCriteriaProvider) == type
                ? AppColors.primary
                : AppColors.ashSecond,
            borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 9, horizontal: 20),
          child: Text(
            type,
            style: TextStyle(
              color: ref.watch(sortingCriteriaProvider) == type
                  ? AppColors.background
                  : AppColors.primary,
            ),
          ),
        ),
      ),
    );
  }
}
