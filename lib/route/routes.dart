import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import './route_handlers.dart';

class Routes {
  static String root = "/";
  static String recipeDetail = "/recipe_detail";
  static String addRecipe = "/add_recipe";

  static void configureRoutes(FluroRouter router) {
    router.notFoundHandler = Handler(
        handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
      print("ROUTE WAS NOT FOUND !!!");
      return;
    });

    router.define(root, handler: rootHandler);
    router.define(recipeDetail, handler: RecipeDetailHandler);
    router.define(addRecipe, handler: AddRecipeHandler);
  }
}
