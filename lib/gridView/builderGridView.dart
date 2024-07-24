import 'package:flutter/material.dart';

class BuilderGridView extends StatelessWidget {
  const BuilderGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("Builder GridView"),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
        ),
        itemBuilder: (ctx, index) {
          return Card(
            color: Colors.greenAccent,
            child: Center(
              child: Container(
                height: 60,
                width: 60,
                alignment: Alignment.center,
                child: Text("Index = $index"),
              ),
            ),
          );
        },
      ),
    );
  }
}
