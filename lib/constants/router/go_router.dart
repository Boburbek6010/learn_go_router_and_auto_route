import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:learn_go_router_and_auto_route/pages/detail_page.dart';

import '../../pages/home_page.dart';

class AppRouter{

  static final GoRouter goRouter = GoRouter(
    initialLocation: "/",
    routes: [
      GoRoute(
        name: "HomePage",
        path: "/",
        builder: (BuildContext context, GoRouterState state) => const HomePage(),
        routes: [
          GoRoute(
            name: "DetailPage",
            path: "detail_page",
            builder: (BuildContext context, GoRouterState state) => const DetailPage(),
          ),
        ]
      ),
    ]
  );

}