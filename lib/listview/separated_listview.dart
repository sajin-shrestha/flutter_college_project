import 'package:flutter/material.dart';

class SeparatedListView extends StatelessWidget {
  SeparatedListView({super.key});

  final sc = ScrollController();

  @override
  Widget build(BuildContext context) {
    return RawScrollbar(
      controller: sc,
      thumbColor: Colors.black,
      trackColor: Colors.grey,
      thumbVisibility: true,
      trackVisibility: true,
      child: ListView.separated(
        controller: sc,
        itemCount: 60,
        padding: EdgeInsets.all(10),
        separatorBuilder: (context, index) => Divider(
          color: Colors.black,
          thickness: 4,
          // height: 5,
          // default height is 16
        ),
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
      ),
    );
  }
}
