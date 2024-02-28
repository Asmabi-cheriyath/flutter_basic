import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  final String name;
  final String message;
  final double time;
  final String image;
  const Details(
      {required this.name,
      required this.message,
      required this.time,
      required this.image,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Container(
            height: 50,
            width: 400,
            color: Colors.amber,
            child: Text(
              message,
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 300,
                width: 500,
                decoration: const BoxDecoration(
                    color: Colors.cyan,
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://wallpapers.com/images/featured-full/flower-pictures-unpxbv1q9kxyqr1d.jpg"),fit: BoxFit.cover)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
