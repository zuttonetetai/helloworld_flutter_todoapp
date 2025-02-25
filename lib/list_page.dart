import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ListPage extends StatefulWidget {
  const ListPage({super.key});

  @override
  State<ListPage> createState() => ListPageState();
}

class DogData {
  String dogName;
  int dogAge;
  DogData({required this.dogName, required this.dogAge});
}

// listtile list
var listtilelist = <ListTile>[];

class ListPageState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dog List',
            style: TextStyle(color: Color.fromARGB(255, 255, 255, 255))),
        backgroundColor: Colors.blue.shade500,
        leading: IconButton(
            icon: const Text("Reset"),
            onPressed: () {
              setState(
                () {
                  listtilelist = [];
                },
              );
            }),
      ),
      body: ListView(children: listtilelist),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => context.go('/input', extra: listtilelist),
      ),
    );
  }
}
