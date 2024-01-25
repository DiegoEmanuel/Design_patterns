// ignore_for_file: deprecated_member_use

import 'package:design_patterns/chain_of_responsability/main.dart';
import 'package:design_patterns/factory/widgets/pedido_factory_screen.dart';
import 'package:design_patterns/strategy/strategy_pattern_example.dart';
import 'package:flutter/material.dart';

abstract class RouteStrategy {
  void navigate();
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
      theme: ThemeData(
        primaryColor: Colors.blueGrey,
        scaffoldBackgroundColor: Colors.grey[700],
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen Patterns 🔥🔥🌐'),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 20),
            ElevatedButton.icon(
              icon: const Icon(Icons.calculate_outlined),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const StrategyPatternExample()),
                );
              },
              label: const Text('Go to Strategy Pattern'),
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              icon: const Icon(Icons.factory_outlined),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FactoryPatternExample()),
                );
              },
              label: const Text('Go to Factory Pattern'),
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              icon: const Icon(Icons.child_care_outlined),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ChainOfResponsabilityPatternExample()),
                );
              },
              label: const Text('Go to Chain of Responsability Pattern'),
            ),

            //show this gif https://www.icegif.com/wp-content/uploads/memes-icegif-2.gif

            const SizedBox(height: 20),
            const Center(
              child: Text(
                'Dart language',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            const Text(
              'Diego Emanuel',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.lightBlue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
