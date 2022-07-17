import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_test/screen/page_home.dart';

import 'screen/page_one.dart';
import 'screen/page_two.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final _router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const PageHome(),
      ),
      GoRoute(
        path: '/page1',
        builder: (context, state) => const PageOne(),
      ),
      GoRoute(
        path: '/page2',
        builder: (context, state) => const PageTwo(),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationProvider: _router.routeInformationProvider,
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
      title: 'Go Router test app',
    );
  }
}
