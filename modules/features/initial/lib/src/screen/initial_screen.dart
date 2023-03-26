import 'package:core_ui/core_ui.dart';
import 'package:flutter/widgets.dart';
import 'package:projects/projects.dart';

class InitialScreen extends StatelessWidget {
  const InitialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(AppPadding.screenEdge),
      child: ProjectsScreen(),
    );
  }
}
