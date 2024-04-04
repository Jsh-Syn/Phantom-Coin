import 'package:flutter/material.dart';
import 'package:phantom_coin/pages/games.dart';
import 'package:phantom_coin/pages/profile_screen.dart';
import 'package:phantom_coin/pages/streaming.dart';
import 'package:phantom_coin/theme/style.dart';
import 'package:phantom_coin/widgets/game_cards.dart';
import 'package:phantom_coin/widgets/homepage_card.dart';

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
              color: COLOR_CONTAINER,
              height: 130,
              width: 500,
              padding: const EdgeInsets.symmetric(vertical: 11, horizontal: 6),
              child: Column(
                children: [
                  const Text(
                    textAlign: TextAlign.center,
                    'Phantom Coin',
                    style: TextStyle(
                      color: COLOR_WHITE,
                      fontSize: LARGE_SIZE,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
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
                    SizedBox(height: 5),
                    HPCard(),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Text(
                          'In-game Currency Discounts',
                          style: TextStyle(
                              fontSize: DESC_SIZE,
                              fontWeight: FontWeight.bold,
                              color: TEXT_COLOR),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    GameCards(
                        imagePath: 'images/genshin.png',
                        GameText: 'Genshin Impact'),
                    SizedBox(height: 10),
                    GameCards(
                        imagePath: 'images/codwarzone.png',
                        GameText: 'COD Warzone Mobile'),
                    SizedBox(height: 10),
                    GameCards(
                        imagePath: 'images/sololeveling.png',
                        GameText: 'Arise: Solo Leveling'),
                    SizedBox(height: 10),
                    GameCards(
                        imagePath: 'images/fortnite.png', GameText: 'Fortnite'),
                    SizedBox(height: 10),
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
              builder: (context) => GamePage(),
            ),
          );
        },
        color: BTN_WHITE,
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
                builder: (context) => StreamingPage(),
              ));
        },
        color: BTN_WHITE,
        child: const Text('Community'),
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
              builder: (context) => const ProfilePage(),
            ),
          );
        },
        color: BTN_WHITE,
        child: const Text('Profile'),
      ),
    );
  }
}
