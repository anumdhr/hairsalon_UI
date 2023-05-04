import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../homescreen/home_page.dart';

class BottomAppBarPage extends StatefulWidget {
  const BottomAppBarPage({super.key});

  @override
  State<BottomAppBarPage> createState() => _BottomAppBarPageState();
}

class _BottomAppBarPageState extends State<BottomAppBarPage> {
  int count = 0;
  List page = [
    MyHomePage(),
    Container(
      child: Text("Second Page"),
    ),
    Container(
      child: Text("Third page"),
    ),
    Container(
      child: Text("Profile"),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 22),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  setState(
                    () {
                      count = 0;
                    },
                  );
                },
                icon: Icon(Icons.home),
              ),
              IconButton(
                onPressed: () {
                  setState(
                    () {
                      count = 1;
                    },
                  );
                },
                icon: Icon(Icons.search),
              ),
              IconButton(
                onPressed: () {
                  setState(
                    () {
                      count = 3;
                    },
                  );
                },
                icon: Icon(Icons.info),
              ),
              IconButton(
                onPressed: () {
                  setState(
                    () {
                      count = 2;
                    },
                  );
                },
                icon: Icon(Icons.notification_important),
              ),
              IconButton(
                onPressed: () {
                  setState(
                    () {
                      count = 3;
                    },
                  );
                },
                icon: Icon(Icons.boy_rounded),
              ),
            ],
          ),
        ),
      ),
      body: page[count],
    );
  }
}
