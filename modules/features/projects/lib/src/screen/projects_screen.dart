import 'package:core_ui/core_ui.dart';
import 'package:flutter/material.dart';

import '../models/project.dart';
import '../widgets/project_card.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.charlestonGreen,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'My Pet projects',
            style: GoogleFonts.barlow(
              textStyle: const TextStyle(
                color: AppColors.brightGray,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(height: AppPadding.p16),
          Wrap(
            spacing: AppPadding.p16,
            children: [
              ...projects.map((Project project) {
                return ProjectCard(project: project);
              }),
            ],
          ),
        ],
      ),
    );
  }
}
