import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:quizz/toDoList/toDoList_content.dart';
import 'package:quizz/toDoList/toDoLsit_screen.dart';

class AddScreen extends StatefulWidget {
  const AddScreen({super.key});
  static const String routeName = "/AddScreen";

  @override
  State<AddScreen> createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {
  final TextEditingController titleValue = TextEditingController();
  final TextEditingController discriptionValue = TextEditingController();
  List<toDoContent> toData = [];

  void addData() {
    String newTitle = titleValue.text;
    String newDis = discriptionValue.text;
    String eventTime = DateFormat("dd-MM-yyy").format(DateTime.now());
    if (newTitle.isNotEmpty && newDis.isNotEmpty) {
      setState(() {
        toData.add(toDoContent(
            title: newTitle,
            discription: newDis,
            id: 1,
            eventDateTime: eventTime));
        titleValue.clear();
        discriptionValue.clear();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text(
          'Add To Do',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w500, color: Colors.white),
        )),
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
            child: Column(
              children: [
                TextFormField(
                  controller: titleValue,
                  decoration: const InputDecoration(
                    hintText: "Title",
                    hintStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff78746D)),
                  ),
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: discriptionValue,
                  decoration: const InputDecoration(
                    hintText: "Discription",
                    hintStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff78746D)),
                  ),
                ),
                const SizedBox(height: 32),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xffE3562A),
                        ),
                        onPressed: addData,
                        child: const Padding(
                          padding: EdgeInsets.all(16),
                          child: Text(
                            "Add",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                        )),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xffE3562A),
                        ),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (_) => ToDo(object: toData)));
                        },
                        child: const Padding(
                          padding: EdgeInsets.all(16),
                          child: Text(
                            "Back",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                        )),
                  ],
                ),
              ],
            )));
  }
}
