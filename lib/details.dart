import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  final String name;
  final String message;
  final double time;
  final String image;
  const Details({required this.name, required this.message,required this.time,required this.image,super.key});
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(name),backgroundColor: Colors.blue,),
      
      body: Container(child: Text(message,),)
      
    ,

    );
  }
}