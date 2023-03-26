import 'package:core_ui/core_ui.dart';
import 'package:flutter/material.dart';
import 'package:image_network/image_network.dart';

import '../models/project.dart';
import 'link_button.dart';
import 'tag_widget.dart';

class ProjectCard extends StatelessWidget {
  final Project project;

  static const double _width = 300.0;
  static const double _borderRadius = 14.0;

  const ProjectCard({
    super.key,
    required this.project,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(height: 340, width: _width),
      decoration: BoxDecoration(
        color: AppColors.darkGunmetal,
        borderRadius: BorderRadius.circular(_borderRadius),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(_borderRadius),
            clipBehavior: Clip.hardEdge,
            child: ImageNetwork(
              image: project.imageUrl,
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
                  project.title,
                  style: GoogleFonts.barlow(
                    textStyle: const TextStyle(
                      color: AppColors.brightGray,
                      fontSize: 20,
                    ),
                  ),
                ),
                const SizedBox(height: AppPadding.p12),
                Text(
                  project.description,
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
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppPadding.p16),
            child: Wrap(
              spacing: AppPadding.p8,
              children: [
                ...project.tags.map((Tag tag) => TagWidget(tag: tag)),
              ],
            ),
          ),
          const SizedBox(height: AppPadding.p8),
          Row(
            children: [
              const SizedBox(width: AppPadding.p8),
              project.sourceCodeUrl.isEmpty
                  ? const SizedBox()
                  : LinkButton(
                      title: 'Live demo',
                      onPressed: () {
                        launchUrl(Uri.parse(project.sourceCodeUrl), mode: defaultLaunchMode);
                      },
                    ),
              project.liveDemoUrl.isEmpty
                  ? const SizedBox()
                  : LinkButton(
                      title: 'Source code',
                      onPressed: () {
                        launchUrl(Uri.parse(project.liveDemoUrl), mode: defaultLaunchMode);
                      },
                    ),
            ],
          ),
          const SizedBox(height: AppPadding.p16),
        ],
      ),
    );
  }
}
