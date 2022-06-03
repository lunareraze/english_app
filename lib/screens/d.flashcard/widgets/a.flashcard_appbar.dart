import 'package:flutter/material.dart';

class FlashcardAppbar extends StatelessWidget {
  const FlashcardAppbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('FLASHCARD'),
      centerTitle: true,
    );
  }
}
