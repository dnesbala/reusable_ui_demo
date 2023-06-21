import 'package:flutter/material.dart';

class NewsPost extends StatelessWidget {
  // yaha haami constructor ko laagi fields banauxau.. j j value linu xa, tei value rakhera..
  final String title;
  final String description;

// Here is the constructor, jaslai title ra description chainxa.. jun haami NewsPost() lai call garne belaa pass garxau
  const NewsPost({
    Key? key,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      color: Colors.grey.shade300,
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            // yaha haami le mathi class ko field ko value use garxau.. jun haami lai NewsPost() call garne belaa aauxa
            title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5),
          Text(description),
        ],
      ),
    );
  }
}
