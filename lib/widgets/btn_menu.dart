import 'package:flutter/material.dart';

class BtnMenu extends StatelessWidget {
  const BtnMenu({
    Key? key,
    required this.label,
    required this.widget,
  }) : super(key: key);

  final String label;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 50,
      child: ElevatedButton(
        child: Text(
          label,
        ),
        style: ElevatedButton.styleFrom(primary: Colors.pink.shade400),
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
