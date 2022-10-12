import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:monarch_mart/view/bottom_navigation/categories.dart';
import 'package:monarch_mart/view/bottom_navigation/home.dart';

class AppRoutePages {
  static final GoRouter _router = GoRouter(
    
    routes: <GoRoute>[
      
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const Home();
        },
      ),
      GoRoute(
        path: '/categories',
        builder: (BuildContext context, GoRouterState state) {
          return const Categories();
        },
      ),

    ],
  );
}
