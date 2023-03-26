import 'package:core_ui/core_ui.dart';
import 'package:flutter/material.dart';
import 'package:image_network/image_network.dart';

import 'link_button.dart';
import 'tag_widget.dart';

class ProjectCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description;
  final VoidCallback onSourceCodePressed;
  final VoidCallback onLiveDemoPressed;

  static const double _width = 300.0;
  static const double _borderRadius = 14.0;

  const ProjectCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.description,
    required this.onSourceCodePressed,
    required this.onLiveDemoPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.darkGunmetal,
        borderRadius: BorderRadius.circular(_borderRadius),
      ),
      width: _width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(_borderRadius),
            clipBehavior: Clip.hardEdge,
            child: ImageNetwork(
              image: imageUrl,
              height: 150.0,
              width: _width,
              fitWeb: BoxFitWeb.contain,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(AppPadding.p16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.barlow(
                    textStyle: const TextStyle(
                      color: AppColors.brightGray,
                      fontSize: 20,
                    ),
                  ),
                ),
                const SizedBox(height: AppPadding.p12),
                Text(
                  description,
                  style: GoogleFonts.barlow(
                    textStyle: const TextStyle(
                      color: AppColors.brightGray,
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppPadding.p16),
            child: Wrap(
              spacing: AppPadding.p8,
              children: const [
                TagWidget(tag: Tag.dart),
                TagWidget(tag: Tag.flutter),
              ],
            ),
          ),
          const SizedBox(height: AppPadding.p8),
          Row(
            children: [
              const SizedBox(width: AppPadding.p8),
              LinkButton(title: 'Source code', onPressed: onSourceCodePressed),
              LinkButton(title: 'Live demo', onPressed: onLiveDemoPressed),
            ],
          ),
          const SizedBox(height: AppPadding.p16),
        ],
      ),
    );
  }
}
