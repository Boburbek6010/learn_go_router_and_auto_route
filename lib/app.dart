import 'package:flutter/material.dart';
import 'package:learn_go_router_and_auto_route/constants/router/go_router.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.goRouter,
    );
  }
}
