import 'package:flutter/material.dart';

class CountGridView extends StatelessWidget {
  const CountGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("Count GridView"),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(100, (index) {
          return Card(
            color: Colors.blueGrey,
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
