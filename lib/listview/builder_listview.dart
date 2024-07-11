import 'package:flutter/material.dart';

class BuilderListView extends StatelessWidget {
  const BuilderListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 50,
      itemExtent: 200,
      // scrollDirection: Axis.horizontal,
      itemBuilder: (ctx, index) {
        return Container(
          height: 120,
          width: 140,
          color: Colors.teal,
          child: Text(
            "Container ${index + 1}",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        );
      },
    );
  }
}
