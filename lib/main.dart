import 'package:flutter/material.dart';
import 'package:sih/dashboard/dashboard.view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Dashboard',
          ),
        ),
        endDrawer: Drawer(
          child: ListView(
            children: const [
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
        body: const Dashboard(),
      ),
    );
  }
}
