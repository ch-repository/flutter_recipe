import 'package:flutter/material.dart';
import 'package:flutter_recipe/route/application.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Text('Welcome to your app!'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Application.router.navigateTo(context, "/recipe_detail");
        },
        child: Text('测试路由'),
      ),
    );
  }
}
