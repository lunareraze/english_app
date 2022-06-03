import 'package:flutter/material.dart';
import 'widgets/a.flashcard_appbar.dart';
import 'widgets/b.flashcard_body.dart';

class Flashcard extends StatelessWidget {
  const Flashcard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: FlashcardAppbar(),
      ),
      body: FlashcardBody(),
    );
  }
}
