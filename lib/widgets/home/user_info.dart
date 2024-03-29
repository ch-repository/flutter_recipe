import 'package:flutter/material.dart';
import 'package:flutter_recipe/utils/screen_util.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({super.key, required this.name, required this.description});

  final String name;
  final String description;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: ScreenUtil.rem(context, 200), // 设置整体宽度
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // 子部件从左开始排列
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
              width: ScreenUtil.rem(context, 50),
              height: ScreenUtil.rem(context, 50),
              child: CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                    "https://p.qqan.com/up/2024-3/17115851337568418.jpg"),
              ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 8), // 添加顶部间距
            child: Text(
              name,
              style: TextStyle(
                  fontSize: ScreenUtil.rem(context, 14),
                  color: Colors.grey[400]),
            ),
          ),
          Flexible(
            // 使用Flexible让第三行文本换行
            child: Text(
              description,
              style: TextStyle(
                  fontSize: ScreenUtil.rem(context, 16),
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
