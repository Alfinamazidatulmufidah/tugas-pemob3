import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Flutter Demo",
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Card"),
          ),
          body: const MyHomePage(),
        ));
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: ListTile(
            onTap: () {},
            leading: Image.network(
                'https://shotkit.com/wp-content/uploads/bb-plugin/cache/cool-profile-pic-matheus-ferrero-landscape-6cbeea07ce870fc53bedd94909941a4b-zybravgx2q47.jpeg'),
            trailing: const Icon(Icons.more_vert),
            title: const Text('Alfina Mazidah'),
            subtitle: const Text("Hobi Memasak"),
            tileColor: Colors.white70));
  }
}