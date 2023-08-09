import 'package:flutter/material.dart';
import 'package:quizz/assets.dart';
import 'package:quizz/toDoList/add_screen.dart';
import 'package:quizz/toDoList/toDoList_content.dart';

class ToDo extends StatefulWidget {
  static const String routeName = "/ToDo";
  final List<toDoContent> object;
  const ToDo({super.key, required this.object});

  @override
  State<ToDo> createState() => _ToDoState();
}

class _ToDoState extends State<ToDo> {
  late List<toDoContent> _objects;

  @override
  void initState() {
    super.initState();
    _objects = widget.object;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "ToDoList",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w500, color: Colors.white),
          ),
          backgroundColor: const Color(0xffE3562A),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (_) => const AddScreen()));
          },
          backgroundColor: Colors.transparent,
          elevation: 0,
          child: Image.asset(Assets.assets_images_icons2_add_100_png),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Expanded(
                  child: ListView.builder(
                      itemCount: _objects.length,
                      itemBuilder: (_, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color:
                                    const Color.fromARGB(255, 203, 122, 122)),
                            child: ListTile(
                              title: Text(
                                _objects[index].title,
                                style: const TextStyle(
                                    color: Color(0xffffffff),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              ),
                              subtitle: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(_objects[index].discription,
                                      style: const TextStyle(
                                          color: Color(0xffffffff),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500)),
                                  const SizedBox(height: 4),
                                  Text(
                                    _objects[index].eventDateTime.toString(),
                                    style: const TextStyle(
                                        color: Color(0xffffffff),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                              trailing: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: Image.asset(Assets
                                          .assets_images_handwriting_png)),
                                  IconButton(
                                      onPressed: () {
                                        setState(() {
                                          _objects.remove(_objects[index]);
                                        });
                                      },
                                      icon: Image.asset(
                                          Assets.assets_images_trash_can_png)),
                                ],
                              ),
                            ),
                          ),
                        );
                      })),
            ],
          ),
        ));
  }
}
