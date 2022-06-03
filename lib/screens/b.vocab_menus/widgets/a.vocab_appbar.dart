import 'package:flutter/material.dart';

class VocabAppbar extends StatelessWidget {
  const VocabAppbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 56,
      title: const Text(
        'VOCABULARY',
        style: TextStyle(
          fontSize: 25,
          letterSpacing: 6,
          wordSpacing: 4,
          fontStyle: FontStyle.normal,
          color: Colors.white,
        ),
      ),
      centerTitle: true,
    );
  }
}
