import 'package:flutter/material.dart';
import 'package:flutter_recipe/utils/screen_util.dart';

class SearchInput extends StatefulWidget {
  const SearchInput({super.key});

  @override
  State<SearchInput> createState() => _SearchInput();
}

class _SearchInput extends State<SearchInput> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      margin: EdgeInsets.only(top: 12),
      width: double.infinity,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(8),
      ),
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.search, color: Colors.grey),
          SizedBox(width: 8),
          Expanded(
            child: TextField(
              textAlignVertical: TextAlignVertical.bottom,
              decoration: InputDecoration(
                isDense: true,
                border: InputBorder.none,
                hintText: 'Search',
                hintStyle: TextStyle(color: Colors.grey),
                contentPadding: EdgeInsets.zero,
              ),
            ),
          ),
          Icon(Icons.clear, color: Colors.grey),
        ],
      ),
    );
  }
}

//  输入框对齐 https://blog.csdn.net/qq1377399077/article/details/108852342
