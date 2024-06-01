import 'package:cuoi_ki_flutter/resources/app_color.dart';
import 'package:flutter/material.dart';
import 'package:cuoi_ki_flutter/models/new_feed.dart';

class ArticleDetailPage extends StatelessWidget {
  final Article article;

  const ArticleDetailPage({Key? key, required this.article}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.transparent,
        elevation: 0,
        title: const Text(
          'Thông tin',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: AppColor.black,
          ),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(color: AppColor.black),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              article.image,
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 16),
                Text(
                  article.title,
                  style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  'Tác giả: ${article.author}',
                  style: const TextStyle(fontSize: 16, color: AppColor.grey),
                ),
                const SizedBox(height: 2),
                Text(
                  'Ngày đăng: ${article.postedOn}',
                  style: const TextStyle(fontSize: 10, color: AppColor.grey),
                ),
                const SizedBox(height: 16),
                Text(
                  'Bài viết: ${article.description}',
                  style: const TextStyle(fontSize: 16, color: AppColor.black),
                ),
                
                
              ],
            ),
          ),
        ],
      ),
    );
  }
}
