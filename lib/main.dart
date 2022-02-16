

import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

Widget buildcard() => Container(
      width: 300,
      height: 200,
      decoration: BoxDecoration(color: Colors.cyan.shade300,borderRadius: BorderRadius.all(Radius.circular(15)),),
      margin: EdgeInsets.all(10),
      
    );

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Dashboard',
          ),
        ),
        endDrawer: Drawer(
          child: ListView(
            children: [
              SizedBox(
                height: 50,
              ),
              ListTile(
                title: Text(
                  'Profile',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              ListTile(
                title: Text(
                  'Feedback',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              ListTile(
                title: Text(
                  'Analytics',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              ListTile(
                title: Text('Saved', style: TextStyle(fontSize: 20)),
              ),
              ListTile(
                title: Text('Learn', style: TextStyle(fontSize: 20)),
              ),
              ListTile(
                title: Text('Skill Badges', style: TextStyle(fontSize: 20)),
              ),
            ],
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                SizedBox(
                  width: 12,
                ),
                Text(
                  'Job Alert!',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 22),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 200,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: 8,
                  separatorBuilder: (context, _) => SizedBox(
                        width: 2,
                      ),
                  itemBuilder: (context, index) => buildcard()),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                SizedBox(
                  width: 12,
                ),
                Text(
                  'Fellowships',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 22),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
           Container(
              height: 200,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: 8,
                  separatorBuilder: (context, _) => SizedBox(
                        width: 2,
                      ),
                  itemBuilder: (context, index) => buildcard()),
            ), 
          ],
        ),
      ),
    );
  }
}
