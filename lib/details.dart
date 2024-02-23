import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  final String name;
  const Details({required this.name, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(name),),
    );
  }
}