import 'package:flutter/material.dart';

class MakeStory extends StatelessWidget {
  final String text;
  final String avatarImage;
  final String storyImage;

  MakeStory({
    required this.text,
    required this.avatarImage,
    required this.storyImage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      height: 200,
      margin: EdgeInsets.all(6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage(storyImage),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(4),
            margin: EdgeInsets.fromLTRB(0, 10, 70, 0),
            decoration: BoxDecoration(
              color: Color(0xFF1777F2),
              shape: BoxShape.circle,
            ),
            child: CircleAvatar(
              radius: 16,
              backgroundImage: AssetImage(avatarImage),
            ),
          ),
          SizedBox(height: 100),
          Text(
            text,
            style: TextStyle(
                color: Color.fromARGB(255, 247, 247, 247),
                fontSize: 12,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
