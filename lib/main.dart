import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

import 'package:flutter_recipe/route/application.dart';
import 'package:flutter_recipe/route/routes.dart';

void main() {
  runApp(RecipeApp());
}

class RecipeApp extends StatefulWidget {
  @override
  State createState() {
    return _RecipeAppState();
  }
}

class _RecipeAppState extends State<RecipeApp> {
  _RecipeAppState() {
    final router = FluroRouter();
    Routes.configureRoutes(router);
    Application.router = router;
  }

  @override
  Widget build(BuildContext context) {
    final app = MaterialApp(
      title: 'Recipe',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: Application.router.generator,
    );
    return app;
  }
}
