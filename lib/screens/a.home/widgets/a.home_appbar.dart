import 'package:flutter/material.dart';

class HomeAppbar extends StatelessWidget {
  const HomeAppbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      // toolbarHeight: 150,
      leading: const Icon(Icons.home),
      titleSpacing: 0,
      title: const Text(
        'Home',
        style: TextStyle(
          fontSize: 23,
          letterSpacing: 5,
        ),
      ),
      centerTitle: true,
      // centerTitle: true,
    );
  }
}
