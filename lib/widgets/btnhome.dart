import 'package:flutter/material.dart';

class BtnHome extends StatelessWidget {
  const BtnHome({
    Key? key,
    required this.label,
    required this.icon,
    required this.widget,
  }) : super(key: key);

  final String label;
  final IconData icon;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 100,
      child: ElevatedButton(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Opacity(
              opacity: 0.5,
              child: Icon(
                icon,
                size: 35,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              label,
            ),
          ],
        ),
        style: ElevatedButton.styleFrom(
          primary: Colors.pink.shade300, //change background color of button
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
