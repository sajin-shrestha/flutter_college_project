import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  Profile({super.key});

  final scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back),
          ),
          title: Text(
            "Profile Page",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.blueGrey,
        ),
        body: DecoratedBox(
          decoration: BoxDecoration(
            color: Colors.grey,
          ),
          child: RawScrollbar(
            controller: scrollController,
            thumbVisibility: true,
            trackVisibility: true,
            thumbColor: Colors.blueGrey,
            trackColor: Colors.orange,
            child: SingleChildScrollView(
              controller: scrollController,
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 250,
                    width: 250,
                    color: Colors.red,
                    child: Center(
                      child: Text(
                        "Red Container",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    height: 400,
                    width: 500,
                    color: Colors.black,
                    child: Stack(
                      alignment: AlignmentDirectional.center,
                      children: [
                        Container(
                          height: 300,
                          width: 300,
                          color: Colors.deepPurple,
                        ),
                        Container(
                          height: 200,
                          width: 200,
                          color: Colors.orangeAccent,
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 250,
                    width: 170,
                    color: Colors.blueAccent,
                    child: Center(
                      child: Text(
                        "Blue Container",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
