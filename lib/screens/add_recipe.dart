import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AddRecipe extends StatefulWidget {
  const AddRecipe({super.key});

  @override
  State<AddRecipe> createState() => _AddRecipe();
}

class _AddRecipe extends State<AddRecipe> {
  Widget formTitle(String title) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 23,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('新增食谱'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              formTitle('上传图片'),
              const SizedBox(
                height: 16,
              ),
              ElevatedButton(
                onPressed: () async {
                  try {
                    final picker = ImagePicker();
                    final pickedFile =
                        await picker.pickImage(source: ImageSource.gallery);
                    print('---- $pickedFile');
                  } catch (e) {
                    print('error:$e');
                  }
                },
                child: Text('点击上传图片'),
              ),
              const SizedBox(
                height: 32,
              ),
              formTitle('菜品名称'),
              TextField(
                  autofocus: false,
                  decoration: InputDecoration(hintText: '请输入菜品名称')),
              const SizedBox(
                height: 32,
              ),
              formTitle('所需食材'),
              SingleChildScrollView(
                child: Container(
                  margin: EdgeInsets.fromLTRB(0, 12, 0, 0),
                  child: TextField(
                    maxLines: null,
                    onChanged: null,
                    decoration: InputDecoration(
                      hintText: '请输入所需食材',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              formTitle('制作步骤'),
              SingleChildScrollView(
                child: Container(
                  margin: EdgeInsets.fromLTRB(0, 12, 0, 0),
                  child: TextField(
                    maxLines: null,
                    onChanged: null,
                    decoration: InputDecoration(
                      hintText: '请输入制作步骤',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: Container(
        margin: EdgeInsets.fromLTRB(32, 0, 32, 32),
        width: double.infinity,
        height: 60,
        child: FloatingActionButton(
          onPressed: null,
          child: Text(
            '提交',
            style: TextStyle(fontSize: 22),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
