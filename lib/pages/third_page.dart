import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("ThirdPage", style: TextStyle(
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
