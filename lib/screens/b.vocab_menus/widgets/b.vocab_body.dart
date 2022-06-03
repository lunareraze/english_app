import 'package:flutter/material.dart';

import '../../../data_x.dart';

class VocabBody extends StatelessWidget {
  const VocabBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/background_bottom/tulips.png'),
          fit: BoxFit.scaleDown,
          alignment: Alignment.bottomCenter,
        ),
      ),
      child: Align(
        alignment: Alignment.center,
        child: Wrap(
          spacing: 45,
          runSpacing: 50,
          alignment: WrapAlignment.start,
          children: List.generate(
            dataX.length,
            (i) => SizedBox(
              height: 50,
              width: 150,
              child: ElevatedButton(
                child: Text(dataX[i].label),
                onPressed: () {
                  final route = MaterialPageRoute(
                    builder: (context) => dataX[i].detail,
                  );
                  Navigator.push(context, route);
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
