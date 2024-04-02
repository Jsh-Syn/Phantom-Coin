import 'package:flutter/material.dart';
import 'package:phantom_coin/theme/style.dart';

class GameCards extends StatelessWidget {
  final String imagePath;
  final String GameText;
  const GameCards({
    Key? key,
    required this.imagePath,
    required this.GameText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 200,
          width: double.infinity,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 132, 131, 127),
            borderRadius: BorderRadius.circular(15),
          ),
          // Clip antiAlias para maretain pa rin si radius
          clipBehavior: Clip.antiAlias,
          child: Image.asset(
            imagePath,
            fit: BoxFit.fill,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              GameText,
              style: const TextStyle(color: TEXT_COLOR),
            )
          ],
        ),
      ],
    );
  }
}
