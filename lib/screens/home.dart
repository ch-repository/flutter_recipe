import "package:flutter/material.dart";
import "package:flutter_recipe/route/application.dart";
import "package:flutter_recipe/utils/hex_color.dart";
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
              SizedBox(
                height: 24,
              ),
              Category(),
              ProductList(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 16,
        unselectedFontSize: 16,
        iconSize: 32,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.collections_bookmark_rounded),
              label: 'Collection'),
        ],
      ),
      floatingActionButton: Container(
        padding: EdgeInsets.zero,
        margin: const EdgeInsets.only(top: 50),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(120), // 圆角
          border: Border.all(
            color: Colors.white,
            width: 5,
          ),
        ),
        width: 75,
        height: 75,
        child: FloatingActionButton(
          // backgroundColor: _current == 2 ? Colors.green : Colors.grey,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50), // 设置圆角的大小
          ),
          backgroundColor: HexColor('#ECD71B'),
          foregroundColor: Colors.white,
          onPressed: () {},
          child: const Icon(Icons.add, size: 32,),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
