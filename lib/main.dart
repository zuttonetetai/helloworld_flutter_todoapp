import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:helloworld_flutter/list_page.dart';
import 'package:helloworld_flutter/input_page.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: <RouteBase>[
    GoRoute(
        path: '/',
        builder: (context, state) => const ListPage(),
        routes: <RouteBase>[
          GoRoute(
            path: '/input',
            builder: (context, state) => const InputPage(),
          ),
        ]),
  ],
);

// デフォルトのコード
void main() {
  runApp(const MyApp());
}

// デフォルトのコード
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
    );
    /*
    return const MaterialApp(
      home: ListPage(),
    ); */
  }
}
