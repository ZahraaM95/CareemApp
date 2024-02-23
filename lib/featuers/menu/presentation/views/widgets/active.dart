import 'package:flutter/material.dart';

class ActivePage extends StatelessWidget {
  const ActivePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ActivePage'),
      ),
      body: const Center(child: Text('ActivePage')),
    );
  }
}
