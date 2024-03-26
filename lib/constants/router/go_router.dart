import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:learn_go_router_and_auto_route/pages/detail_page.dart';
import 'package:learn_go_router_and_auto_route/pages/first_detail_page.dart';
import 'package:learn_go_router_and_auto_route/pages/first_page.dart';
import 'package:learn_go_router_and_auto_route/pages/main_page.dart';
import 'package:learn_go_router_and_auto_route/pages/second_page.dart';
import 'package:learn_go_router_and_auto_route/pages/third_page.dart';

import '../../pages/home_page.dart';

class AppRouter {
  static final GoRouter goRouter = GoRouter(
    initialLocation: "/first_page",
    routes: [

      GoRoute(
          name: "HomePage",
          path: "/",
          builder: (BuildContext context, GoRouterState state) =>
              const HomePage(),
          routes: [
            GoRoute(
              name: "DetailPage",
              path: "detail_page",
              builder: (BuildContext context, GoRouterState state) =>
                  const DetailPage(),
            ),
          ]),

      ShellRoute(
        builder: (_, __, child) {
          return MainPage(
            child: child,
          );
        },
        routes: [
          GoRoute(
            name: "FirstPage",
            path: "/first_page",
            builder: (context, _) => const FirstPage(),
            routes: [
              GoRoute(
                name: "FirstPageDetail",
                path: "first_page_detail",
                builder: (BuildContext context, GoRouterState state) =>
                const FirstDetailPage(),
              ),
            ]
          ),
          GoRoute(
            name: "SecondPage",
            path: "/second_page",
            builder: (BuildContext context, GoRouterState state) =>
                const SecondPage(),
          ),
          GoRoute(
            name: "ThirdPage",
            path: "/third_page",
            builder: (BuildContext context, GoRouterState state) =>
                const ThirdPage(),
          ),
        ],
      )
    ],
  );
}
