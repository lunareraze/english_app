import 'package:flutter/material.dart';

class CardX extends StatelessWidget {
  const CardX({
    Key? key,
    required this.path,
    required this.english,
    required this.indo,
  }) : super(key: key);

  final String path;
  final String english;
  final String indo;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // debugPrint(english);
        showDialog(
          context: context,
          builder: (context) {
            return Center(
              child: Stack(
                // alignment: Alignment.topRight,

                children: [
                  AspectRatio(
                    aspectRatio: 1 / 1,
                    child: Container(
                      color: Colors.white,
                      child: Image.asset(
                        path,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 3,
                    right: 3,
                    child: Material(
                      color: Colors.grey.withOpacity(0.2),
                      shape: const CircleBorder(),
                      clipBehavior: Clip.hardEdge,
                      child: IconButton(
                        icon: const Icon(
                          Icons.clear,
                          size: 28,
                          color: Color.fromARGB(255, 209, 92, 84),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
          barrierDismissible: false,
          barrierColor: Colors.black87,
        );
      },
      child: Card(
        child: SizedBox(
          height: 150,
          width: double.infinity,
          child: Row(
            children: [
              AspectRatio(
                aspectRatio: 1 / 1,
                child: Container(
                  height: double.infinity,
                  padding: const EdgeInsets.all(8),
                  child: Image.asset(
                    path,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  height: double.infinity,
                  color: Colors.grey.shade200,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          english,
                          textScaleFactor: 1.5,
                          style: const TextStyle(
                            // color: Colors.grey.shade500,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          indo,
                          textScaleFactor: 1.3,
                          // style: TextStyle(color: Colors.grey.shade500),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
