import 'package:flutter/material.dart';
import 'package:flutter_recipe/utils/hex_color.dart';

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
      body: SingleChildScrollView(
          child: Column(
        children: [
          Image.network(
            "https://img1.baidu.com/it/u=1638592353,3807770295&fm=253&app=138&size=w931&n=0&f=JPEG&fmt=auto?sec=1711818000&t=a1bdf83e626ff899f1c4f915be7e0d53",
            fit: BoxFit.cover,
            width: double.infinity,
            height: 280,
          ),
          Container(
            padding: EdgeInsets.all(32),
            width: double.infinity,
            decoration: BoxDecoration(
                // color: Colors.redAccent,
                // borderRadius: BorderRadius.only(
                //     topLeft: Radius.circular(8), topRight: Radius.circular(8)),
                ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "菜品名称",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      padding:
                          EdgeInsets.only(left: 6, right: 8, top: 3, bottom: 3),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: HexColor('#ECD71B'),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.star,
                            size: 14,
                          ),
                          Text('4.5')
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    BaseInfo(icon: Icons.timer_sharp, label: '35mins'),
                    BaseInfo(
                        icon: Icons.perm_identity_sharp, label: '03 serve'),
                    BaseInfo(
                        icon: Icons.local_fire_department_outlined,
                        label: '103 cal'),
                    BaseInfo(icon: Icons.assessment_outlined, label: 'easy'),
                  ],
                ),
                SizedBox(
                  height: 24,
                ),
                DetailInfoList(
                  title: '所需食材',
                ),
                SizedBox(
                  height: 24,
                ),
                DetailInfoList(title: '制作步骤'),
              ],
            ),
          )
        ],
      )),
    );
  }
}

class BaseInfo extends StatelessWidget {
  const BaseInfo({super.key, required this.icon, required this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      width: 70,
      height: 90,
      decoration: BoxDecoration(
          color: HexColor('#ECD71B'), borderRadius: BorderRadius.circular(25)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 32,
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            '$label',
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            softWrap: true,
            style: TextStyle(
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}

class DetailInfoList extends StatelessWidget {
  DetailInfoList({super.key, required this.title});

  final String title;
  final List<String> tmpList = List<String>.generate(6, (i) => 'Item $i');

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '$title',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 6,
        ),
        DetailInfoItem(),
        DetailInfoItem(),
        DetailInfoItem(),
        DetailInfoItem(),
        DetailInfoItem(),
      ],
    );
  }
}

class DetailInfoItem extends StatelessWidget {
  const DetailInfoItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(right: 8),
            width: 15,
            height: 15,
            decoration: BoxDecoration(
                color: HexColor('#ECD71B'),
                borderRadius: BorderRadius.circular(15)),
          ),
          Text(
            '具体的相信信息描述',
            style: TextStyle(fontSize: 16),
          )
        ],
      ),
    );
  }
}
