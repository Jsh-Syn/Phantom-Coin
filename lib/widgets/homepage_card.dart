import 'package:flutter/material.dart';
import 'package:phantom_coin/theme/style.dart';

class HPCard extends StatelessWidget {
  const HPCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 3),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromARGB(255, 202, 174, 255),
      ),
      width: 390,
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            'images/homepage.png',
            height: 160,
          ),
          const Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 32),
              ),
              Text(
                'Are you winning son?',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: TEXT_COLOR),
              ),
              SizedBox(height: 5),
              Text(
                'Check new game deals!',
                style: TextStyle(
                    fontSize: 15,
                    color: TEXT_COLOR,
                    fontWeight: FontWeight.normal),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
