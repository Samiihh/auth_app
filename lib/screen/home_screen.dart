import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Àrea do usuário')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.verified_user, size: 64),
            const SizedBox(height: 12),
            Text('Prévia da área autenticada'),
            Text('A proteção será feita nas proximas aulas'),
          ],
        ),
      ),
    );
  }
}
