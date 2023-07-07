import 'package:flutter/material.dart';

class custom extends StatefulWidget {
  const custom({Key? key}) : super(key: key);

  @override
  State<custom> createState() => _customState();
}

class _customState extends State<custom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("USER DRAWER"),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          "KEVIN MALI",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ),
      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 70, left: 9),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 45,
                    backgroundImage: NetworkImage(
                        "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png"),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Kevin Mali",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text("kevinmali@gmail.com"),
                        Text(
                          "9638319169",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Divider(),
            TextButton(
              onPressed: () {},
              child: const Text("Home"),
            ),
            const Divider(),
            TextButton(
              onPressed: () {},
              child: const Text("ℹ️ About"),
            ),
            const Divider(),
            TextButton(
              onPressed: () {},
              child: const Text("⚙️ Settings"),
            ),
            const Divider(),
            TextButton(
              onPressed: () {},
              child: const Text("📇 Index"),
            ),
            const Divider(),
            TextButton(
              onPressed: () {},
              child: const Text("🗑️ Trase"),
            ),
            const Divider(),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/');
              },
              child: const Text("❓ Help"),
            ),
          ],
        ),
      ),
    );
  }
}
