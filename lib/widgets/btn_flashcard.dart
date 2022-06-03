import 'package:flutter/material.dart';

class BtnFlashcard extends StatelessWidget {
  const BtnFlashcard({
    Key? key,
    required this.vocabularyname,
    required this.widget,
  }) : super(key: key);

  final String vocabularyname;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 50,
      child: ElevatedButton(
        child: Text(
          vocabularyname,
        ),
        onPressed: () {
          var route = MaterialPageRoute(builder: (context) {
            return widget;
          });
          Navigator.push(context, route);
        },
      ),
    );
  }
}
