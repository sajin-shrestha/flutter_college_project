import 'package:flutter/material.dart';

class NormalListView extends StatelessWidget {
  const NormalListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: List.generate(
        100,
        (index) {
          return Card(
            child: Container(
              height: 200,
              width: 250,
              color: Colors.purple,
              child: Text(
                "Container ${index + 1}",
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
