import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Dashboard",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blueGrey,
        leading: Builder(builder: (context) {
          return IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
            ),
          );
        }),
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text(
              "Click me",
              style: TextStyle(
                color: Colors.white,
                backgroundColor: Colors.redAccent,
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.people,
              color: Colors.white,
            ),
          )
        ],
        elevation: 10,
        shadowColor: Colors.black,
      ),
      drawer: Drawer(
        backgroundColor: Colors.blueGrey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Sajin Shrestha"),
              accountEmail: Text("shresthasajin59@gmail.com"),
              // currentAccountPicture: CircleAvatar(
              //   backgroundColor: Colors.white,
              //   child: Text('SS'),
              // ),
              currentAccountPicture: Image.network(
                  "https://images.unsplash.com/photo-1640960543409-dbe56ccc30e2?q=80&w=2080&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
              otherAccountsPictures: [
                // CircleAvatar(
                //   backgroundColor: Colors.white,
                //   child: Text('S'),
                // ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                )
              ],
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                // Handle the tap event
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                // Handle the tap event
              },
            ),
            // Add additional content here if needed
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 300,
            width: 350,
            // color: Colors.teal, //-> cannot use color parameter together with decoration
            decoration: BoxDecoration(
              color: Colors.teal,
              // borderRadius: BorderRadius.all(Radius.elliptical(30, 100)),
              // borderRadius: BorderRadius.horizontal(right: Radius.circular(40)),
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(30),
                bottomLeft: Radius.circular(50),
              ),
              border: Border.all(
                color: Colors.black26,
                width: 4,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black87.withOpacity(0.8),
                  offset: const Offset(10, 10),
                  blurRadius: 10,
                  spreadRadius: 5,
                ),
                BoxShadow(
                  color: Colors.deepPurple.withOpacity(0.5),
                  offset: const Offset(20, 20),
                  blurRadius: 5,
                  spreadRadius: 5,
                ),
              ],
            ),
            alignment: Alignment.center,
            // padding: EdgeInsets.all(30),
            margin: const EdgeInsets.only(
              top: 20,
              left: 140,
            ),
            transform: Matrix4.rotationZ(0.4),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Container Title"),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.circular(20),
                    // shape: BoxShape.circle, // use shape if you want to define certain shape for eg:circle
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    "Hello Sajin!",
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
