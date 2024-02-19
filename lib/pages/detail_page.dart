import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("DetailPage", style: TextStyle(
                fontSize: 30,
              ),),
              ElevatedButton(
                onPressed: (){},
                child: const Text("Go back"),
              )
            ],
          ),
        )
    );
  }
}
