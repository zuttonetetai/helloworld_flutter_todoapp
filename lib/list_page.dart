import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dog List',
            style: TextStyle(color: Color.fromARGB(255, 255, 255, 255))),
        backgroundColor: Colors.blue.shade500,
      ),
      body: ListView(children: const [
        ListTile(title: Text("name 1"), subtitle: Text("age 1")),
        ListTile(title: Text("name 2"), subtitle: Text("age 2")),
        ListTile(title: Text("name 3"), subtitle: Text("age 3")),
      ]),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => context.go('/input'),
      ),
    );
  }
}
