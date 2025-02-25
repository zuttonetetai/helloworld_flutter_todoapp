import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class InputPage extends StatelessWidget {
  const InputPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Input Page'),
              backgroundColor: Colors.blue.shade500,
              leading: IconButton(
                  icon: const Icon(Icons.arrow_back_ios),
                  onPressed: () => context.pop()),
            ),
            body: Column(children: [
              const SizedBox(height: 6.0),
              const TextField(
                  decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                labelText: 'Dog Name',
              )),
              const TextField(
                  decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                labelText: 'Dog Age',
              )),
              ElevatedButton(
                child: const Text('OK'),
                onPressed: () {},
              ),
            ])));
  }
}
