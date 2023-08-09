// import 'package:flutter/material.dart';
// import 'package:quizz/t/screenA.dart';

// class ScB extends StatefulWidget {
//   const ScB({super.key});

//   @override
//   State<ScB> createState() => _ScBState();
// }

// class _ScBState extends State<ScB> {
//   TextEditingController textInput = TextEditingController();
//   List<String> dataTest = [];

//   void addData() {
//     String newInput = textInput.text;
//     setState(() {
//       dataTest.add(newInput);
//       textInput.clear();
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Padding(
//       padding: EdgeInsets.all(40),
//       child: Column(
//         children: [
//           TextFormField(
//             decoration: InputDecoration(
//               hintText: "Nhap...",
//             ),
//           ),
//           Row(
//             children: [
//               ElevatedButton(
//                   onPressed: () {
//                     Navigator.of(context)
//                         .push(MaterialPageRoute(builder: (_) => ScA(data: MyData)));
//                   },
//                   child: Text("Back")),
//               ElevatedButton(onPressed: addData, child: Text("ADD")),
//             ],
//           ),
//         ],
//       ),
//     ));
//   }
// }
