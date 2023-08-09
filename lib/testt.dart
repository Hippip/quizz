import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TestList extends StatefulWidget {
  const TestList({super.key});

  @override
  State<TestList> createState() => _TestListState();
}

class _TestListState extends State<TestList> {
  List<String> dataList = [];
  TextEditingController textInput = TextEditingController();
  TextEditingController numberDelete = TextEditingController();

  @override
  void initState() {
    super.initState();
    loadData();
  }

  void loadData() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String>? saveD = prefs.getStringList("data_list");
    if (saveD != null) {
      setState(() {
        dataList = saveD;
      });
    }
  }

  void saveData() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setStringList("data_list", dataList);
  }

  void addToDataList() {
    String newData = textInput.text;
    if (newData.isNotEmpty) {
      setState(() {
        dataList.add(newData);
        saveData();
        textInput.clear();
      });
    }
  }

  void deleteToDataList() {
    String numDelete = numberDelete.text;
    int indexDelete = int.tryParse(numDelete) ?? 0;
    if (dataList.contains(dataList[indexDelete])) {
      setState(() {
        dataList.remove(dataList[indexDelete]);
        numberDelete.clear();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            TextFormField(
              controller: textInput,
              decoration: const InputDecoration(hintText: "..."),
            ),
            Center(
              child: ElevatedButton(
                  onPressed: addToDataList, child: const Text("ADD")),
            ),
            TextFormField(
              controller: numberDelete,
              decoration: const InputDecoration(
                hintText: "Index...",
              ),
            ),
            ElevatedButton(
                onPressed: deleteToDataList, child: const Text("Delete")),
            Expanded(
                child: ListView.builder(
                    itemCount: dataList.length,
                    itemBuilder: (_, index) {
                      return ListTile(
                        title: Text(dataList[index]),
                      );
                    }))
          ],
        ),
      ),
    );
  }
}
