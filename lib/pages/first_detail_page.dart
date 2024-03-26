import 'package:flutter/material.dart';

class FirstDetailPage extends StatefulWidget {
  const FirstDetailPage({super.key});

  @override
  State<FirstDetailPage> createState() => _FirstDetailPageState();
}

class _FirstDetailPageState extends State<FirstDetailPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("FirstDetailPage"),
      ),
    );
  }
}
