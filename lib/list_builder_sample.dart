import 'package:flutter/material.dart';
import 'package:project_flutter/datas.dart';
import 'package:project_flutter/details.dart';

class ListBuilder extends StatelessWidget {
  const ListBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    Datas datas = Datas();
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
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 10,
        ),
        child: ListView.separated(
          separatorBuilder: (context, index) => const Divider(
            endIndent: 10,
            indent: 10,
          ),
          itemCount: datas.items.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(datas.items[index]["image"]),
              ),
              title: Text(datas.items[index]["name"]),
              subtitle: Row(
                children: [
                  const Icon(Icons.done_all),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(datas.items[index]["message"]),
                ],
              ),
              trailing: Text(datas.items[index]["time"].toString()),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Details(
                    name: datas.items[index]["name"],
                    message: datas.items[index]["message"],
                    time: datas.items[index]["time"],
                    image: datas.items[index]["image"],
                  ),
                ));
              },
            );
          },
        ),
      ),
    );
  }
}
