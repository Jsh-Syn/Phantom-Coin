import 'package:flutter/material.dart';
import 'package:phantom_coin/theme/style.dart';

class TakeName extends StatefulWidget {
  const TakeName({super.key});

  @override
  State<TakeName> createState() => _TakeNameState();
}

class _TakeNameState extends State<TakeName> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: COLOR_CONTAINER,
      body: Column(
        children: [
          Text('How should '),
        ],
      ),
    );
  }
}
