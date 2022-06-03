import 'package:flutter/material.dart';

import 'widgets/a.vocab_appbar.dart';
import 'widgets/b.vocab_body.dart';

class Vocab extends StatelessWidget {
  const Vocab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: VocabAppbar(),
      ),
      // backgroundColor: Colors.green.shade200,
      body: VocabBody(),
    );
  }
}
