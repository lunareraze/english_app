import 'package:flutter/material.dart';

class FlashCardX extends StatelessWidget {
  final String image;
  final String label;
  const FlashCardX({
    Key? key,
    this.image = '',
    this.label = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.all(20),
        width: 400,
        height: 300,
        decoration: BoxDecoration(
          // color: Colors.grey,
          border: Border.all(
            color: Colors.grey.shade400,
            width: 2,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(20)),
        ),
        child: Center(
          child: image != ''
              ? SizedBox(
                  width: 200,
                  height: 200,
                  child: Image.asset(image),
                )
              : Text(
                  label,
                  style: const TextStyle(
                    fontSize: 50,
                    color: Colors.black54,
                  ),
                ),
        ),
      ),
    );
  }
}
