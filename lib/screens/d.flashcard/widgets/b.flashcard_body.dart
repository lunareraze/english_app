import 'package:englishapp/data_x.dart';
import 'package:englishapp/helper/card_properties.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

import 'c.flashcard_x.dart';

class FlashcardBody extends StatelessWidget {
  const FlashcardBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<CardProperties> data = [];
    for (var element in dataX) {
      data.addAll(element.detail.items);
    }
    data.shuffle();

    return Center(
      child: SizedBox(
        height: 300,
        width: 400,
        child: SafeArea(
          child: PageView(
            children: List.generate(
              data.length,
              (i) {
                return FlipCard(
                  direction: FlipDirection.HORIZONTAL,
                  front: FlashCardX(image: data[i].path),
                  back: FlashCardX(
                    label: data[i].english,
                  ),
                );
              },
            ),
          ),
        ),
        // decoration: const BoxDecoration(
        //   image: DecorationImage(
        //     image: AssetImage('assets/background_bottom/tulips.png'),
        //     fit: BoxFit.scaleDown,
        //     alignment: Alignment.bottomCenter,
        //   ),
        // ),
        // padding: EdgeInsets.only(bottom: 30),
      ),
    );
  }
}









































// import 'package:flutter/material.dart';

// import 'c.flashcard_x.dart';

// class FlashcardBody extends StatefulWidget {
//   const FlashcardBody({Key? key}) : super(key: key);

//   @override
//   State<FlashcardBody> createState() => _FlashcardBodyState();
// }

// class _FlashcardBodyState extends State<FlashcardBody> {
//   final PageController _pageController = PageController(
//     initialPage: 0,
//   );

//   @override
//   void dispose() {
//     _pageController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: PageView(
//         controller: _pageController,
//         children: const [
//           FlashCardX(image: 'assets/animal_image/bear.png'),
//           FlashCardX(image: 'assets/animal_image/turtle.png'),
//           FlashCardX(image: 'assets/animal_image/zebra.png'),
//         ],
//       ),
//     );
//   }
// }
