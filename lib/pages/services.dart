import 'package:flutter/material.dart';
import 'package:phantom_coin/theme/style.dart';

class ServicesPage extends StatelessWidget {
  const ServicesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BG_COLOR,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: BG_COLOR,
        title: const Text('Services'),
      ),
    );
  }
}
