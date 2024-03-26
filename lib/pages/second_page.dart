import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("SecondPage", style: TextStyle(
                fontSize: 30,
              ),),
              ElevatedButton(
                onPressed: (){

                },
                child: const Text("Go next"),
              )
            ],
          ),
        )
    );
  }
}
