import 'package:flutter/material.dart';

class NewsDetailPage extends StatelessWidget {
  final String title;
  final String description;
  final String content;
  final String publishedAt; // Added publishedAt
  final String author; // Added author

  const NewsDetailPage({
    super.key,
    required this.title,
    required this.description,
    required this.content,
    required this.publishedAt, // Receive publishedAt
    required this.author, // Receive author
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details" , style: TextStyle(fontSize: 40,color: const Color.fromARGB(255, 209, 203, 11)) ,),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Card(
          shadowColor: Colors.black,
          elevation: 35,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                Text(
                  description,
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
                SizedBox(height: 20),
                Text(content), // Show the content from JSON
                SizedBox(height: 100),
                Text(
                  "Published At: $publishedAt", // Display publishedAt
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
                SizedBox(height: 10),
                Text(
                  "Author: $author", // Display author
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}





