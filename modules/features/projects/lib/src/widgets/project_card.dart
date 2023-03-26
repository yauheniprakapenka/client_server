import 'package:core_ui/core_ui.dart';
import 'package:flutter/material.dart';
import 'package:image_network/image_network.dart';

class ProjectCard extends StatelessWidget {
  static const double _width = 300.0;
  static const double _borderRadius = 14.0;

  final String imageUrl;
  final String title;
  final String description;

  const ProjectCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.description,
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
              fullScreen: false,
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
                  style: const TextStyle(
                    color: AppColors.brightGray,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(height: AppPadding.p12),
                Text(
                  description,
                  style: const TextStyle(
                    color: AppColors.brightGray,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          // const SizedBox(height: AppPadding.p16),
        ],
      ),
    );
  }
}
