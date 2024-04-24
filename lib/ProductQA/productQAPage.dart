import 'package:flutter/material.dart';

class ProductQAPage extends StatefulWidget {
  @override
  _ProductQAPageState createState() => _ProductQAPageState();
}

class _ProductQAPageState extends State<ProductQAPage> {
  List<Map<String, String>> qaList = [
    {'question': 'سوال 1', 'answer': 'پاسخ 1'},
    {'question': 'سوال 2', 'answer': 'پاسخ 2'},
  ];

  String newQuestion = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('پرسش‌ها و پاسخ‌ها'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: qaList.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Text(qaList[index]['question']!),
                    subtitle: Text(qaList[index]['answer']!),
                  ),
                );
              },
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'پرسش جدید',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                newQuestion = value;
              },
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // ثبت پرسش
              if (newQuestion.isNotEmpty) {
                setState(() {
                  qaList.add({'question': newQuestion, 'answer': ''});
                  newQuestion = '';
                });
              }
            },
            child: Text('ثبت پرسش جدید'),
          ),
        ],
      ),
    );
  }
}