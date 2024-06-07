// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:ontrack/presentation/sample/cart.dart';
// import 'package:ontrack/presentation/sample/cartcontrol.dart';
// import 'package:ontrack/presentation/sample/controller.dart';
//
// class sample extends StatefulWidget {
//   const sample({super.key});
//
//   @override
//   State<sample> createState() => _sampleState();
// }
//
// class _sampleState extends State<sample> {
//   final datacontroller = Get.put(controll());
//   final dataController = Get.put(Controllerse());
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: Text("whishlist"),
//       ),
//       body: Column(
//         children: [
//           ListView.builder(
//             shrinkWrap: true,
//             itemCount: datacontroller.item.length ?? 0,
//             itemBuilder: (context, index) {
//               return ListTile(
//                 title: Text(datacontroller.item[index].title),
//                 subtitle: Text(datacontroller.item[index].subtitle),
//                 trailing: Icon(Icons.add),
//                 onTap: () {
//                   dataController.addToCart(datacontroller.item[index]);
//                 },
//               );
//             },
//           ),
//           SizedBox(
//             height: 20,
//           ),
//           TextButton(
//               style: TextButton.styleFrom(
//                 backgroundColor: Colors.blue,
//               ),
//               onPressed: () {
//                 Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => cart(),
//                     ));
//               },
//               child: Text("cartpage"))
//         ],
//       ),
//     );
//   }
// }
