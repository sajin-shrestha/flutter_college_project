import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spincircle_bottom_bar/modals.dart';
import 'package:spincircle_bottom_bar/spincircle_bottom_bar.dart';
import 'package:test_application/gallery.dart';
import 'package:test_application/gridView/builderGridView.dart';
import 'package:test_application/gridView/countGridView.dart';
import 'package:test_application/gridView/normalGridView.dart';
import 'package:test_application/listview/builder_listview.dart';
import 'package:test_application/listview/custom_listview.dart';
import 'package:test_application/listview/normal_listview.dart';
import 'package:test_application/listview/separated_listview.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget listChild = NormalListView();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Home Page"),
          backgroundColor: Colors.deepOrangeAccent,
        ),
        //Adding SpinCircleBottomBarHolder to body of Scaffold
        body: SpinCircleBottomBarHolder(
          bottomNavigationBar: SCBottomBarDetails(
              circleColors: [Colors.white, Colors.orange, Colors.redAccent],
              iconTheme: IconThemeData(color: Colors.black45),
              activeIconTheme: IconThemeData(color: Colors.orange),
              backgroundColor: Colors.white,
              titleStyle: TextStyle(color: Colors.black45, fontSize: 12),
              activeTitleStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.bold),
              actionButtonDetails: SCActionButtonDetails(
                  color: Colors.redAccent,
                  icon: Icon(
                    Icons.expand_less,
                    color: Colors.white,
                  ),
                  elevation: 2),
              elevation: 2.0,
              items: [
                // Suggested count : 4
                SCBottomBarItem(
                    icon: Icons.verified_user,
                    title: "ListView",
                    onPressed: () {
                      listChild = NormalListView();
                      setState(() {});
                    }),
                SCBottomBarItem(
                    icon: Icons.supervised_user_circle,
                    title: "ListView Builder",
                    onPressed: () {
                      listChild = BuilderListView();
                      setState(() {});
                    }),
                SCBottomBarItem(
                    icon: Icons.notifications,
                    title: "ListView Separated",
                    onPressed: () {
                      listChild = SeparatedListView();
                      setState(() {});
                    }),
                SCBottomBarItem(
                    icon: Icons.details,
                    title: "ListView Custom",
                    onPressed: () {
                      listChild = CustomListView();
                      setState(() {});
                    }),
              ],
              circleItems: [
                //Suggested Count: 3
                SCItem(
                  icon: Icon(Icons.grid_goldenratio),
                  onPressed: () {},
                ),
                SCItem(
                  icon: Icon(Icons.grid_3x3),
                  onPressed: () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (ctx) {
                          return BuilderGridView();
                        },
                      ),
                    );
                  },
                ),
                SCItem(
                  icon: Icon(Icons.grid_4x4),
                  onPressed: () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (ctx) {
                          return CountGridView();
                        },
                      ),
                    );
                  },
                ),
                SCItem(
                  icon: Icon(Icons.grid_off),
                  onPressed: () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (ctx) {
                          return NormalGridView();
                        },
                      ),
                    );
                  },
                ),
              ],
              bnbHeight: 80 // Suggested Height 80
              ),
          child: Container(
            color: Colors.orangeAccent.withAlpha(55),
            // child: listChild,
            child: Gallery(),
          ),
        ),
      ),
    );
  }
}
