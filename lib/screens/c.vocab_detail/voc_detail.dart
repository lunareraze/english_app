import 'package:flutter/material.dart';

import '../../helper/card_properties.dart';
import '../../widgets/cardx.dart';

class VocabDetail extends StatelessWidget {
  final String title;
  final List<CardProperties> items;
  const VocabDetail({
    Key? key,
    required this.title,
    required this.items,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: const TextStyle(
            letterSpacing: 15,
            fontSize: 25,
          ),
        ),
      ),
      body: ListView(
        children: List.generate(
          items.length,
          (i) => CardX(
            path: items[i].path,
            english: items[i].english,
            indo: items[i].indo,
          ),
        ),
      ),
    );
  }
}
