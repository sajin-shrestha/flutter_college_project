import 'package:flutter/material.dart';

class Project extends StatelessWidget {
  const Project({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Project Page"),
      ),
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            // alignment: Alignment.center,
            children: [
              Container(
                height: 300,
                color: Colors.blueGrey,
              ),
              Container(
                height: 200,
                // color: Colors.blue,
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://images.unsplash.com/photo-1640960543409-dbe56ccc30e2?q=80&w=2080&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: 325,
              ),
              Positioned(
                  bottom: 0,
                  left: MediaQuery.of(context).size.width / 2 - 25,
                  // right: 0,
                  child: FloatingActionButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back),
                  )),
            ],
          ),
          Expanded(
            child: ListView(
              // scrollDirection: Axis.horizontal,
              // scrollDirection: Axis.vertical,
              // shrinkWrap: true,
              children: List.generate(
                15,
                (index) {
                  return Card(
                    child: Container(
                      width: 50,
                      child: Text("options $index"),
                      height: 100,
                      color: Colors.deepOrange,
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
