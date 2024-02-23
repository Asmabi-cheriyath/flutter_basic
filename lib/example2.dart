// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:project_flutter/list_builder_sample.dart';

class Example2 extends StatelessWidget {
  const Example2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "WhatsApp",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.teal.shade700,
          actions: [
            IconButton(
                icon: const Icon(
                  Icons.camera_alt_outlined,
                  color: Colors.white,
                ),
                onPressed: () {}),
            IconButton(
                icon: const Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                onPressed: () {}),
            IconButton(
                icon: const Icon(
                  Icons.more_vert,
                  color: Colors.white,
                ),
                onPressed: () {})
          ],
        ),
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
              color: Colors.cyan,
              child: const Row(
                children: [
                  CircleAvatar(),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Text("asma"), Text("hello")],
                  ),
                  Spacer(),
                  Text("5:00")
                ],
              ),
            ),
            const ListTile(
              leading: CircleAvatar(),
              title: Text("abc"),
              subtitle: Row(
                children: [
                 Icon(Icons.done_all),SizedBox(width: 5,) ,Text("zcvnm"),
                ],
              ),
              trailing: Text("2:00"),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => ListBuilder(),));
        }),);
  }
}
