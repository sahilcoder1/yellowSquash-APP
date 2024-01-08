// import 'package:flutter/material.dart';

// class ExpandableList extends StatefulWidget {
//   const ExpandableList({super.key});

//   @override
//   _ExpandableListState createState() => _ExpandableListState();
// }

// class _ExpandableListState extends State<ExpandableList> {
//   bool _isOverviewExpanded = false;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         InkWell(
//           onTap: () {
//             setState(() {
//               _isOverviewExpanded = !_isOverviewExpanded;
//             });
//           },
//           child: Padding(
//             padding: const EdgeInsets.all(10),
//             child: Container(
//               decoration: const BoxDecoration(
//                 borderRadius: BorderRadius.vertical(
//                   top: Radius.circular(15),
//                   bottom: Radius.circular(15),
//                 ),
//                 color: Colors.white,
//               ),
//               padding:
//                   const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   const Text(
//                     'Overview',
//                     style: TextStyle(
//                       fontSize: 18,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   Icon(
//                     _isOverviewExpanded
//                         ? Icons.keyboard_arrow_up
//                         : Icons.keyboard_arrow_down,
//                     size: 30,
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//         if (_isOverviewExpanded)
//           Container(
//             decoration: const BoxDecoration(
//               border: Border(
//                   // top: BorderSide(color: Colors.grey),
//                   // left: BorderSide(color: Colors.grey),
//                   // right: BorderSide(color: Colors.grey),
//                   ),
//             ),
//             padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
//             child: const Text(
//               'Overview content goes here.',
//               style: TextStyle(fontSize: 16),
//             ),
//           ),
//       ],
//     );
//   }
// }
