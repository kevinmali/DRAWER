import 'package:drawer/custome.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (ctx) => screen(),
        'Drawer': (ctx) => custom(),
      },
    ),
  );
}

class screen extends StatefulWidget {
  const screen({Key? key}) : super(key: key);

  @override
  State<screen> createState() => _screenState();
}

class _screenState extends State<screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          " CUSTOME DRAWER",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const custom(),
              ),
            );
          },
          child: const Text(
            "USER DRAWER",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
        ),
      ),
      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text("kevin"),
              accountEmail: Text("kevinmali@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1457449940276-e8deed18bfff?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60"),
              ),
            ),
            const Divider(),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/');
              },
              child: const Text("Home"),
            ),
            const Divider(),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('Drawer');
              },
              child: const Text("About"),
            ),
            const Divider(),
            TextButton(
              onPressed: () {},
              child: const Text("Settings"),
            ),
            const Divider(),
            TextButton(
              onPressed: () {},
              child: const Text("Index"),
            ),
            const Divider(),
            TextButton(
              onPressed: () {},
              child: const Text("Trase"),
            ),
            const Divider(),
            TextButton(
              onPressed: () {},
              child: const Text("Help"),
            ),
          ],
        ),
      ),
    );
  }
}
