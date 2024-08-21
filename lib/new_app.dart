import 'package:flutter/material.dart';

class NewApp extends StatelessWidget {
  final String content;

  const NewApp({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Summary'),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Text(
          content,
          style: const TextStyle(fontSize: 24),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
