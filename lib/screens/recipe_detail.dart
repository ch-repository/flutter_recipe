import 'package:flutter/material.dart';

class RecipeDetail extends StatefulWidget {
  const RecipeDetail({super.key});

  @override
  State<RecipeDetail> createState() => _RecipeDetail();
}

class _RecipeDetail extends State<RecipeDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('餐谱详情'),
      ),
      body: Image.network(
        "https://img1.baidu.com/it/u=1638592353,3807770295&fm=253&app=138&size=w931&n=0&f=JPEG&fmt=auto?sec=1711818000&t=a1bdf83e626ff899f1c4f915be7e0d53",
        fit: BoxFit.cover,
        width: double.infinity,
        height: 300,
      ),
    );
  }
}
