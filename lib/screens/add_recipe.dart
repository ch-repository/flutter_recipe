import 'package:flutter/material.dart';

class AddRecipe extends StatefulWidget {
  const AddRecipe({super.key});

  @override
  State<AddRecipe> createState() => _AddRecipe();
}

class _AddRecipe extends State<AddRecipe> {
  @override
  Widget build(BuildContext context) {
    return Text('新增食谱');
  }
}
