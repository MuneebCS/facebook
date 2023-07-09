import 'package:flutter/material.dart';

class MakePost extends StatelessWidget {
  final String text;
  final String avatarImage;
  final String postImage;
  final String username;
  final String timeAgo;
  final int likesCount;
  final int commentsCount;

  MakePost({
    required this.text,
    required this.avatarImage,
    required this.postImage,
    required this.username,
    required this.timeAgo,
    required this.likesCount,
    required this.commentsCount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.all(7),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0, 1),
            blurRadius: 2,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Post Header
          Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage(avatarImage),
              ),
              SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      username,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.public,
                          size: 12,
                          color: Colors.grey,
                        ),
                        SizedBox(width: 4),
                        Text(
                          timeAgo,
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          // Post Content (Caption)
          Text(
            text,
            style: TextStyle(
              fontSize: 14,
            ),
          ),
          SizedBox(height: 10),
          // Post Content (Image)
          Image.asset(
            postImage,
            width: double.infinity,
            height: 200,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 10),

          Row(
            children: [
              Icon(
                Icons.thumb_up,
                size: 20,
                color: Colors.blue,
              ),
              SizedBox(width: 5),
              Text(
                likesCount.toString(),
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                ),
              ),
              SizedBox(width: 20),
              Icon(
                Icons.comment,
                size: 20,
                color: Colors.blue,
              ),
              SizedBox(width: 5),
              Text(
                commentsCount.toString(),
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
