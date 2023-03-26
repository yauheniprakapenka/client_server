import 'package:core_ui/core_ui.dart';
import 'package:flutter/material.dart';

class TagWidget extends StatelessWidget {
  final Tag tag;

  const TagWidget({
    super.key,
    required this.tag,
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: AppColors.darkGunmetal,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          width: 2,
          color: tag.color,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppPadding.p8, vertical: AppPadding.p4),
        child: Text(
          tag.name,
          style: GoogleFonts.barlow(
            textStyle: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: AppColors.brightGray,
            ),
          ),
        ),
      ),
    );
  }
}

enum Tag {
  dart,
  flutter,
  game,
  blockchain,
}

extension TagMapper on Tag {
  Color get color {
    switch (this) {
      case Tag.dart:
        return AppColors.skyBlue;
      case Tag.flutter:
        return AppColors.lemonLime;
      case Tag.game:
        return AppColors.salmon;
      case Tag.blockchain:
        return AppColors.dogwoodRose;
    }
  }
}
