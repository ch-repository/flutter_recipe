import "package:flutter/material.dart";
import "package:flutter_recipe/route/application.dart";
import "package:flutter_recipe/utils/screen_util.dart";
import "package:flutter_recipe/widgets/home/category.dart";
import "package:flutter_recipe/widgets/home/product_list.dart";
import "package:flutter_recipe/widgets/home/search_input.dart";
import "package:flutter_recipe/widgets/home/user_info.dart";

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 32, 16, 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const UserInfo(
                name: "Hello, Jelly!",
                description: "Make your own food, stay at home",
              ),

              SearchInput(),
              SizedBox(height: 24,),
              Category(),
              ProductList(),
            ],
          ),
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     Application.router.navigateTo(context, "/recipe_detail");
      //   },
      //   child: Text("测试路由"),
      // ),
    );
  }
}
