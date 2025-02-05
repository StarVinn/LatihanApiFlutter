import 'package:flutter/material.dart';
import 'post_model.dart';

class PostDetailsPage extends StatelessWidget {
  final Post post;

  const PostDetailsPage({required this.post});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Post Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              post.title,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Text('User ID:'),
                SizedBox(width: 10),
                Text(post.UserId.toString()),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Text('ID:'),
                SizedBox(width: 10),
                Text(post.id.toString()), // Assuming 'id' exists in Post model
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Text('Body:'),
                SizedBox(width: 10),
                Text(
                    post.body.toString()), // Assuming 'id' exists in Post model
              ],
            ),
          ],
        ),
      ),
    );
  }
}
