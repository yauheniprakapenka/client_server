import 'package:core_ui/core_ui.dart';
import 'package:flutter/material.dart';

class LinkButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const LinkButton({
    super.key,
    required this.title,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        title,
        style: GoogleFonts.barlow(
          textStyle: const TextStyle(
            fontSize: 14,
            color: Color.fromARGB(255, 248, 216, 122),
          ),
        ),
      ),
    );
  }
}
