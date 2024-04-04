import 'package:flutter/material.dart';

import 'package:phantom_coin/theme/style.dart';

class GamePage extends StatelessWidget {
  GamePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: BG_COLOR,
        appBar: AppBar(
          automaticallyImplyLeading: true,
          backgroundColor: COLOR_CONTAINER,
          title: const Text(
            'Games',
            style: TextStyle(color: COLOR_WHITE),
          ),
          iconTheme: const IconThemeData(color: COLOR_WHITE),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: Column(
              children: [
                Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(color: BTN_BORDER_COLOR),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        Icon(Icons.search),
                        SizedBox(width: 13),
                        Text('Search for games'),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                const Row(
                  children: [
                    Text('Featured games'),
                  ],
                ),
                const SizedBox(height: 5),
                SizedBox(
                  height: 250,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      buildGameImage('images/games_scum.png'),
                      buildGameImage('images/games_wot.png'),
                      buildGameImage('images/games_remnant.png'),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                const Row(
                  children: [
                    Text('Recommended by users:'),
                  ],
                ),
                const SizedBox(height: 5),
                gameList('images/games_farlight.png', 'Farlight'),
                const SizedBox(height: 10),
                gameList('images/games_fc.png', 'Far Cry'),
                const SizedBox(height: 10),
                gameList('images/games_ac.png', 'Assassin\'s Creed Odyssey'),
                const SizedBox(height: 10),
                gameList('images/games_helldivers.png', 'Helldivers 2'),
                const SizedBox(height: 10),
                gameList('images/games_t6.png', 'Tekken 6'),
                const SizedBox(height: 10),
                gameList('images/games_ww.png', 'Wuthering Waves'),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildGameImage(String imagePath) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(7),
        child: Image(
          image: AssetImage(imagePath),
          fit: BoxFit.fitHeight,
        ),
      ),
    );
  }

  Widget gameList(String gameIcon, String gameTitle) {
    return Container(
      height: 65,
      width: double.infinity,
      color: COLOR_CONTAINER,
      child: Row(
        children: [
          Image(
            image: AssetImage(gameIcon),
            height: 70,
          ),
          const SizedBox(width: 18),
          Text(
            gameTitle,
            style: const TextStyle(color: COLOR_WHITE),
          ),
        ],
      ),
    );
  }
}
