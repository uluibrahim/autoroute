import 'package:flutter/material.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Settings")),
      body: TextButton(
        onPressed: () {},
        child: Card(
          child: Image.network("https://picsum.photos/200"),
        ),
      ),
    );
  }
}
