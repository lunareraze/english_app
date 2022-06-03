import 'package:flutter/material.dart';

class HomeBackground extends StatelessWidget {
  const HomeBackground({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                Container(
                  height: 120,
                  width: 120,
                  // color: Colors.green,
                  margin: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/background_bottom/topsun.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const Text(
                  'Hello, KIDS!!',
                  style: TextStyle(
                    color: Colors.pink,
                    fontSize: 30,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 150,
            width: double.infinity,
            // color: Colors.green,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/background_bottom/tulips.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
