import 'package:flutter/material.dart';
import 'package:phantom_coin/theme/style.dart';

class ServicesPage extends StatelessWidget {
  const ServicesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: BG_COLOR,
        appBar: AppBar(
          automaticallyImplyLeading: true,
          backgroundColor: BG_COLOR,
          title: const Text('Services'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'images/wip.png',
                height: 250,
              ),
              const Text('Feature currently in progress'),
            ],
          ),
        ),
      ),
    );
  }
}
