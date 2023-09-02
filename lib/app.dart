import 'package:app/router/router.dart';
import 'package:app/theme/theme.dart';
import 'package:flutter/material.dart';

class StartApp extends StatelessWidget {
  const StartApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: darkTheme,
      routes: routes,
    );
  }
}
