import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("HomePage", style: TextStyle(
              fontSize: 30,
            ),),
            ElevatedButton(
              onPressed: ()async{
                context.go("/detail_page");
              },
              child: const Text("Go next"),
            )
          ],
        ),
      )
    );
  }
}
