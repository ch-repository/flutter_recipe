import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

import 'package:flutter_recipe/screens/home.dart';
import 'package:flutter_recipe/screens/recipe_detail.dart';
import 'package:flutter_recipe/screens/add_recipe.dart';

var rootHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return Home();
});

var RecipeDetailHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return RecipeDetail();
});

var AddRecipeHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return AddRecipe();
});
