import 'package:flutter/material.dart';

class HomeDetailView extends StatelessWidget {
  final String url;
  const HomeDetailView({Key? key,required this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(url)),
    );
  }
}