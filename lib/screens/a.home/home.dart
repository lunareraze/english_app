import 'package:flutter/material.dart';

import 'widgets/a.home_appbar.dart';
import 'widgets/b.home_background.dart';
import 'widgets/c.home_buttons.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: HomeAppbar(),
      ),
      body: Stack(
        children: const [
          HomeBackground(),
          HomeButtons(),
        ],
      ),
    );
  }
}
