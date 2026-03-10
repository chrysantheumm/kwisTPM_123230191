import 'package:flutter/material.dart';
import 'package:kuis_123230191/models/newsmodel.dart';


class NewsDetail extends StatefulWidget {
  final NewsModel newsModel;

  const NewsDetail({super.key, required this.newsModel});

  @override
  State<NewsDetail> createState() => _NewsDetailState();
}

class _NewsDetailState extends State<NewsDetail> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("News Details")),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Poster besar
            Image.network(
              widget.newsModel.image,
              width: double.infinity,
              height: 300,
              fit: BoxFit.cover,
            ),

            Padding(
              padding: const EdgeInsets.all(16),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// Title
                  Text(
                    "${widget.newsModel.title} ",
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  Text("❤️  ${widget.newsModel.likes}"),

                          const SizedBox(height: 5),

                  Text(
                    "${widget.newsModel.description} ",
                    style: const TextStyle(
                      fontSize: 12,
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

          

