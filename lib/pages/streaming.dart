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
          backgroundColor: BG_COLOR,
          title: const Text('Streaming'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'images/wip.png',
                height: 250,
              ),
              const Text(
                'Feature currently in progress',
              )
            ],
          ),
        ),
      ),
    );
  }
}
