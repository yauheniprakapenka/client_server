import 'package:core_ui/core_ui.dart';
import 'package:flutter/material.dart';

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
          ProjectCard(
            imageUrl:
                'https://user-images.githubusercontent.com/47568606/227797175-7f747ea9-6b1c-499b-a425-08b6afacb259.jpg',
            title: 'Adventure game',
            description: '2d platformer with a walk through a snowy location',
            onLiveDemoPressed: () {},
            onSourceCodePressed: () {},
          ),
        ],
      ),
    );
  }
}
