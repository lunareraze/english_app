import 'package:flutter/material.dart';

import '../../../widgets/btnhome.dart';
import '../../b.vocab_menus/vocab.dart';
import '../../d.flashcard/flashcard.dart';

class HomeButtons extends StatelessWidget {
  const HomeButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 150),
          child: BtnHome(
            label: 'Flashcard',
            widget: Flashcard(),
            icon: Icons.flash_on,
          ),
        ),
        Row(
          children: const [
            Padding(
              padding: EdgeInsets.fromLTRB(50, 30, 25, 0),
              child: BtnHome(
                label: 'Vocabulary',
                widget: Vocab(),
                icon: Icons.favorite,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
