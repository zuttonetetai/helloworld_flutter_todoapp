import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import './list_page.dart';

class InputPage extends StatefulWidget {
  DogData data;
  InputPage({super.key, required this.data});

  @override
  State<InputPage> createState() => InputPageState();
}

class InputPageState extends State<InputPage> {
  var dogName = '';
  int dogAge = 0;

  void _submitData() {
    widget.data.dogName = dogName;
    widget.data.dogAge = dogAge;
    listtilelist
        .add(ListTile(title: Text(dogName), subtitle: Text(dogAge.toString())));
    context.pop();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text("Input Page"),
              backgroundColor: Colors.blue.shade500,
              leading: IconButton(
                  icon: const Icon(Icons.arrow_back_ios),
                  onPressed: () => context.pop()),
            ),
            body: Column(children: [
              const SizedBox(height: 6.0),
              TextField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    labelText: 'Dog Name',
                  ),
                  onChanged: (text) {
                    setState(() {
                      dogName = text;
                    });
                  }),
              const SizedBox(height: 6.0),
              TextField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    labelText: 'Dog Age',
                  ),
                  onChanged: (text) {
                    setState(() {
                      dogAge = int.parse(text);
                    });
                  }),
              ElevatedButton(
                onPressed: _submitData,
                child: const Text('OK'),
              ),
            ])));
  }
}
