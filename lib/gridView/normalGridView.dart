import 'package:flutter/material.dart';

class NormalGridView extends StatelessWidget {
  const NormalGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.tealAccent,
        title: Text("Normal GridView"),
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4, // Number of columns
          crossAxisSpacing: 4.0,
          mainAxisSpacing: 4.0,
        ),
        // scrollDirection: Axis.horizontal,
        children: List.generate(100, (index) {
          return Card(
            child: Center(
              child: Container(
                height: 60,
                width: 60,
                alignment: Alignment.center,
                child: Text("Index = $index"),
              ),
            ),
          );
        }),
      ),
    );
  }
}
