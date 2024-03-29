import 'package:flutter/material.dart';
import 'package:flutter_recipe/utils/hex_color.dart';

class Category extends StatefulWidget {
  const Category({super.key});

  @override
  State<Category> createState() => _Category();
}

class _Category extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 100,
      child: ListView(
        padding: EdgeInsets.only(left: 8),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: [
          CategoryItem(icon: Icons.account_balance_sharp, label: 'Popular', active: true,),
          CategoryItem(icon: Icons.ac_unit_outlined, label: 'Western'),
          CategoryItem(icon: Icons.ac_unit_outlined, label: 'Drinks'),
          CategoryItem(icon: Icons.ac_unit_outlined, label: 'Drinks'),
          CategoryItem(icon: Icons.ac_unit_outlined, label: 'Drinks'),
          CategoryItem(icon: Icons.ac_unit_outlined, label: 'Drinks'),
          CategoryItem(icon: Icons.ac_unit_outlined, label: 'Drinks'),
          CategoryItem(icon: Icons.ac_unit_outlined, label: 'Drinks'),
        ],
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.icon, required this.label, this.active = false});

  final IconData icon;
  final String label;
  final bool active;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 16),
      child: SizedBox(
        width: 60,
        height: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 60,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: active ? HexColor('#ECD71B') : Colors.grey[200],
              ),
              child: Icon(
                icon,
                size: 32,
              ),
            ),
            SizedBox(height: 4),
            Text(
              label,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 16,
              ),
            )
          ],
        ),
      )
    );
  }
}
