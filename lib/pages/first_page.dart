import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
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
              const Text("FirstPage", style: TextStyle(
                fontSize: 30,
              ),),
              ElevatedButton(
                onPressed: (){
                  log("message");
                  setState((){});
                  context.go("/first_page/first_page_detail");
                },
                child: const Text("Go next"),
              )
            ],
          ),
        )
    );
  }
}
