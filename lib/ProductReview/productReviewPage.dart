import 'package:flutter/material.dart';

class ProductReviewPage extends StatefulWidget {
  @override
  _ProductReviewPageState createState() => _ProductReviewPageState();
}

class _ProductReviewPageState extends State<ProductReviewPage> {
  List<String> userReviews = [
    'نظر 1',
    'نظر 2',
    'نظر 3',
  ];

  String myReview = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('نظرات کاربران'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: userReviews.length,
       itemBuilder: (context, index) {
                return ListTile(
                  title: Text(userReviews[index]),
                );
              },
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'نظر شما',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                myReview = value;
              },
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // ثبت نظر
              if (myReview.isNotEmpty) {
                setState(() {
                  userReviews.add(myReview);
                  myReview = '';
                });
              }
            },
            child: Text('ثبت نظر'),
          ),
        ],
      ),
    );
  }
}