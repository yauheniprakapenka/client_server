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
        children:  const [
          Text(
            'Мои Pet проекты',
            style: TextStyle(
              color: AppColors.brightGray,
              fontSize: 20,
            ),
          ),
          SizedBox(height: AppPadding.p16),
          ProjectCard(
            imageUrl:
                'https://user-images.githubusercontent.com/47568606/227786378-6fb5e8f9-d439-42bc-b197-ed34eb571f83.jpg',
            title: 'Adventure game',
            description: '2d platformer with a walk through a snowy location',
          ),
        ],
      ),
    );
  }
}
