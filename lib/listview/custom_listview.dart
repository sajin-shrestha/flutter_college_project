import 'package:flutter/material.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.custom(
      // reverse: true,
      childrenDelegate: SliverChildBuilderDelegate(
        childCount: 20, // Number of items in the list
        (BuildContext context, int index) {
          return Card(
            margin: EdgeInsets.all(10),
            child: Container(
              height: 100,
              alignment: Alignment.center,
              color: index % 2 == 0 ? Colors.teal : Colors.cyan,
              child: Text(
                'Item ${index + 1}',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
