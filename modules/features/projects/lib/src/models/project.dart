import '../widgets/tag_widget.dart';

class Project {
  final String title;
  final String description;
  final String imageUrl;
  final String sourceCodeUrl;
  final String liveDemoUrl;
  final List<Tag> tags;

  const Project({
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.sourceCodeUrl,
    required this.liveDemoUrl,
    required this.tags,
  });
}

final List<Project> projects = [
  const Project(
    title: 'Adventure game',
    description: '2d platformer with a walk through a snowy location',
    imageUrl:
        'https://user-images.githubusercontent.com/47568606/227797175-7f747ea9-6b1c-499b-a425-08b6afacb259.jpg',
    sourceCodeUrl: 'https://yauheniprakapenka.github.io/newbie/#/',
    liveDemoUrl: 'https://github.com/yauheniprakapenka/newbie',
    tags: [Tag.dart, Tag.flutter, Tag.game],
  ),
   const Project(
    title: 'Dart Tron SDK',
    description: 'Interaction with the Tron blockchain',
    imageUrl:
        'https://user-images.githubusercontent.com/47568606/227798468-e5f3af3a-ea3a-4638-a378-f2ef62768eee.jpg',
    sourceCodeUrl: 'https://github.com/yauheniprakapenka/dart_tron_sdk',
    liveDemoUrl: '',
    tags: [Tag.dart, Tag.blockchain],
  ),



  
];
