import 'package:flutter/material.dart';
import 'package:phantom_coin/theme/style.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: BG_COLOR,
        appBar: AppBar(
          automaticallyImplyLeading: true,
          backgroundColor: COLOR_CONTAINER,
          title: const Text(
            'Profile',
            style: TextStyle(color: BTN_WHITE),
          ),
          iconTheme: IconThemeData(color: COLOR_WHITE),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: Column(
            children: [
              Container(
                height: 200,
                width: 390,
                decoration: BoxDecoration(
                  color: COLOR_CONTAINER_LIGHT,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: Column(
                    children: [
                      Image(
                        height: 120,
                        image: AssetImage('images/profilepic.png'),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Mark Joshua C. Sayen',
                        style: TextStyle(
                            fontSize: DESC_SIZE,
                            color: TEXT_COLOR,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Software Developer - Android',
                        style:
                            TextStyle(fontSize: DESC_SIZE, color: TEXT_COLOR),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30),
              buttons(Icons.person, 'My Account'),
              SizedBox(height: 10),
              buttons(Icons.settings, 'Settings'),
              SizedBox(height: 10),
              buttons(Icons.wallet, 'Balance'),
              SizedBox(height: 10),
              buttons(Icons.exit_to_app, 'Sign out'),
            ],
          ),
        ),
      ),
    );
  }

  Widget buttons(IconData icon, String btnName) {
    return MaterialButton(
      child: Row(
        children: [
          Icon(
            icon,
            color: BTN_WHITE,
          ),
          SizedBox(width: 25),
          Text(btnName, style: TextStyle(color: COLOR_WHITE)),
        ],
      ),
      height: 58,
      color: COLOR_CONTAINER,
      minWidth: double.infinity,
      onPressed: () {},
    );
  }
}
