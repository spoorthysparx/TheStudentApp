import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

Widget buildcard() => Card(
      elevation: 10,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: Container(
        child: Column(children: [
          Expanded(
            child: Image.network(
              "https://images2.minutemediacdn.com/image/upload/c_fill,g_auto,h_1248,w_2220/f_auto,q_auto,w_1100/v1555360464/shape/mentalfloss/istock_000067177343_small.jpg",
              fit: BoxFit.cover,
            ),
          ),
          const Text("title: "),
          const Text("description: ")
        ]),
        width: 300,
        height: 200,
        decoration: const BoxDecoration(
          // color: Colors.cyan.shade300,
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        margin: const EdgeInsets.all(10),
      ),
    );

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
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 15,
            ),
            Row(
              children: const [
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
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 200,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: 8,
                  separatorBuilder: (context, _) => const SizedBox(
                        width: 2,
                      ),
                  itemBuilder: (context, index) => buildcard()),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: const [
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
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 200,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: 8,
                  separatorBuilder: (context, _) => const SizedBox(
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
