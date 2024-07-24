import 'package:flutter/material.dart';

class Gallery extends StatelessWidget {
  Gallery({super.key});
  final galleryList = [
    {
      "title": "demo title1",
      "url":
          "https://plus.unsplash.com/premium_photo-1683910767532-3a25b821f7ae?q=80&w=2008&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    },
    {
      "title": "demo title2",
      "url":
          "https://images.unsplash.com/photo-1709884735626-63e92727d8b6?q=80&w=2128&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    },
    {
      "title": "demo title3",
      "url":
          "https://images.unsplash.com/photo-1706694442016-bd539e1d102b?q=80&w=1977&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    },
    {
      "title": "demo title4",
      "url":
          "https://plus.unsplash.com/premium_photo-1682091872078-46c5ed6a006d?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text("Gallery"),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (ctx, index) {
          final galleryElement = galleryList[index];
          final galleryTitle = galleryElement["title"];
          final galleryURL = galleryElement["url"];

          return Container(
            color: Colors.cyanAccent,
            child: Image.network(
              galleryURL ?? "",
              fit: BoxFit.cover,
            ),
          );
        },
        itemCount: galleryList.length,
      ),
    );
  }
}
