import 'package:flutter/material.dart';
import 'package:shopping_project/constClor.dart';
import 'package:shopping_project/widgetGame/Featured.dart';
import 'package:shopping_project/widgetGame/advances.dart';
import 'package:shopping_project/widgetGame/family.dart';
import 'package:shopping_project/widgetGame/puzzel.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  /// List of Tab Bar Item
  List<String> items = ["Action", "Family", "Adventure", "Puzzle"];


  /// List of body icon
  List<Widget> icons = [
    Featured(),
    Family(),
    Advances(),
    Puzzle(),


  ];
  int current = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],

      /// APPBAR

      body: Container(
        width: double.infinity,
        height: double.infinity,
        margin: const EdgeInsets.all(5),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.drag_handle),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.notification_add_rounded),
                  )
                ],
              ),
              SizedBox(height: 30,),
              /// CUSTOM TABBAR
              SizedBox(
                width: double.infinity,
                height: 60,
                child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemCount: items.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (ctx, index) {
                      return Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                current = index;
                              });
                            },
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 300),
                              margin: const EdgeInsets.all(5),
                              width: 70,
                              height: 40,
                              decoration: BoxDecoration(
                                color: current == index
                                    ? Colors.lightBlueAccent
                                    : blueAccent,
                                borderRadius: current == index
                                    ? BorderRadius.circular(20)
                                    : BorderRadius.circular(25),


                              ),
                              child: Center(
                                child: Text(
                                  items[index],
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: current == index
                                          ? Colors.black
                                          : Colors.grey),
                                ),
                              ),
                            ),
                          ),
                          Visibility(
                              visible: current == index,
                              child: Container(
                              ))
                        ],
                      );
                    }),
              ),

              /// MAIN BODY

              icons[current],

            ],
          ),
        ),
      ),
    );
  }
}