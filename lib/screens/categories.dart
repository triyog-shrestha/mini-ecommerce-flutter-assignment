import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  final String heading;

  const Category({
    super.key,
    required this.heading,
  });

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.heading),
        centerTitle: true,
        actions: [
          Icon(Icons.sort),
          SizedBox(width: 15,)
        ],
      ),
      body: Center(
        child: Text(
          widget.heading,
          style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
