import 'package:flutter/material.dart';
import 'package:reusable_ui_demo/news_data.dart';
import 'package:reusable_ui_demo/news_post.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Reusable UI Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("News"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Text(
                "Total News: ${newsData.length}",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              // यहां हामीलाई धेरैवटा फरक-फरक dynamic news post हरु देखाउनु छ
              // त्यसैले NewsPost() मा हामी constructor बनाउछोौ so that haami le tyesko constructor maa aafnai value (farak-farak) pass garna sakxau
              // It makes this NewsPost() widget dynamic
              SizedBox(height: 20),

              // NewsPost() ko constructor maa title ra description dinaiparxa (required chha)

              // ...newsData
              //     .map((e) => NewsPost(
              //           title: e["title"],
              //           description: e["body"],
              //         ))
              //     .toList(),

              ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: newsData.length,
                  itemBuilder: (context, index) {
                    var news = newsData[index];
                    return NewsPost(
                      title: news["title"],
                      description: news["body"],
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
