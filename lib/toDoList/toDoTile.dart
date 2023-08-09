import 'package:flutter/material.dart';
import 'package:quizz/assets.dart';
import 'package:quizz/toDoList/toDoList_content.dart';

class toDoTile extends StatefulWidget {
  final toDoContent toDoObject;
  const toDoTile(this.toDoObject, {super.key});

  @override
  State<toDoTile> createState() => _toDoTileState();
}

class _toDoTileState extends State<toDoTile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 142, 4, 4),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(widget.toDoObject.id.toString()),
            IconButton(
                onPressed: () {},
                icon: Image.asset(Assets.assets_images_trash_can_png)),
          ]),
        ],
      ),
    ));
  }
}
