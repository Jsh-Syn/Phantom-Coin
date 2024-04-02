import 'package:flutter/material.dart';
import 'package:phantom_coin/pages/games.dart';
import 'package:phantom_coin/pages/services.dart';
import 'package:phantom_coin/pages/streaming.dart';
import 'package:phantom_coin/theme/style.dart';
import 'package:phantom_coin/widgets/game_cards.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: BG_COLOR,
        body: Column(
          children: [
            Container(
              color: const Color.fromARGB(255, 55, 28, 67),
              height: 130,
              width: 500,
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 6),
              child: Column(
                children: [
                  const Text(
                    textAlign: TextAlign.center,
                    'Phantom Coin',
                    style: TextStyle(
                      color: Color.fromARGB(255, 233, 225, 255),
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _button(context),
                      const SizedBox(width: 5),
                      _buttonMid(context),
                      const SizedBox(width: 5),
                      _buttonRight(context),
                    ],
                  ),
                ],
              ),
            ),
            const Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 13, vertical: 8),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Game Currency Discounts',
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    GameCards(
                        imagePath: 'images/genshin.png',
                        GameText: 'Genshin Impact'),
                    SizedBox(height: 8),
                    GameCards(
                        imagePath: 'images/codwarzone.png',
                        GameText: 'COD Warzone Mobile'),
                    SizedBox(height: 8),
                    GameCards(
                        imagePath: 'images/sololeveling.png',
                        GameText: 'Arise: Solo Leveling'),
                    SizedBox(height: 8),
                    GameCards(
                        imagePath: 'images/fortnite.png', GameText: 'Fortnite'),
                    SizedBox(height: 8),
                    GameCards(
                        imagePath: 'images/hsr.png',
                        GameText: 'Honkai Star Rail'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _button(BuildContext context) {
    return Expanded(
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const GamePage(),
            ),
          );
        },
        color: const Color.fromARGB(255, 235, 220, 255),
        child: const Text('Games'),
      ),
    );
  }

  Widget _buttonMid(BuildContext context) {
    return Expanded(
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const StreamingPage(),
              ));
        },
        color: const Color.fromARGB(255, 235, 220, 255),
        child: const Text('Streaming'),
      ),
    );
  }

  Widget _buttonRight(BuildContext context) {
    return Expanded(
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ServicesPage(),
            ),
          );
        },
        color: const Color.fromARGB(255, 235, 220, 255),
        child: const Text('Services'),
      ),
    );
  }
}
