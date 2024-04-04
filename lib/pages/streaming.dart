import 'package:flutter/material.dart';
import 'package:phantom_coin/theme/style.dart';

class StreamingPage extends StatelessWidget {
  const StreamingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: BG_COLOR,
        appBar: AppBar(
          automaticallyImplyLeading: true,
          iconTheme: IconThemeData(color: BTN_WHITE),
          backgroundColor: COLOR_CONTAINER,
          title: const Text(
            'Community',
            style: TextStyle(color: BTN_WHITE),
          ),
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
                        Text('Search for groups'),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Column(
                  children: [
                    Container(
                      height: 200,
                      width: 390,
                      decoration: BoxDecoration(
                        color: COLOR_CONTAINER_LIGHT,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Image.asset(
                            'images/community.png',
                            height: 160,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 30),
                              ),
                              Text(
                                'Pick your community',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: TEXT_COLOR),
                              ),
                              SizedBox(height: 5),
                              Text(
                                'Play with your friends',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: TEXT_COLOR,
                                    fontWeight: FontWeight.normal),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    communityList('images/genshin.png', 'Genshin Impact PH'),
                    SizedBox(height: 20),
                    communityList('images/games_ac.png', 'AC Odyssey PH'),
                    SizedBox(height: 20),
                    communityList(
                        'images/games_farlight.png', 'Farlight Korea'),
                    SizedBox(height: 20),
                    communityList(
                        'images/games_ww.png', 'Wuthering Waves Waiting'),
                    SizedBox(height: 20),
                    communityList('images/hsr.png', 'HSR F2P'),
                    SizedBox(height: 20),
                    communityList(
                        'images/games_remnant.png', 'Remnant Buy and Sell'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget communityList(String gameIcon, String gameTitle) {
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
