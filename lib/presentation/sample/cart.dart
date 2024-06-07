// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:get/get_state_manager/get_state_manager.dart';
// import 'package:ontrack/presentation/sample/cartcontrol.dart';
//
// class cart extends StatefulWidget {
//   const cart({super.key});
//
//   @override
//   State<cart> createState() => _detailsState();
// }
//
// class _detailsState extends State<cart> {
//   final Controllerse dataController = Get.find();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("cart"),
//         centerTitle: true,
//       ),
//       body: Column(
//         children: [
//           Obx(() => ListView.builder(
//             shrinkWrap: true,
//             itemCount: dataController.cartItems.length,
//             itemBuilder: (context, index) {
//               return ListTile(
//                 title: Text(dataController.cartItems[index].title),
//                 trailing: Icon(Icons.remove),
//                 onTap: () {
//                   dataController.remove(dataController.cartItems.value[index]);
//                 },
//               );
//             },
//           )
//           )
//         ],
//       ),
//     );
//   }
// }
