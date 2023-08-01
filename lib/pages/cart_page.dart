// import 'package:flutter/material.dart';
// // import 'package:flutter_screenutil/flutter_screenutil.dart';

// import '../models/list_tile_class.dart';
// import '../widgets/my_cart_content.dart';

// class DismissibleDemo extends StatefulWidget {
//   const DismissibleDemo({Key? key}) : super(key: key);

//   @override
//   State<DismissibleDemo> createState() => _DismissibleDemoState();
// }

// class _DismissibleDemoState extends State<DismissibleDemo> {
//   List<Cart> cartList = [
//     Cart(
//       title: "Vegetable Salad",
//       price: "13,57",
//     ),
//     Cart(
//       title: "Double Sandwich",
//       price: "9,80",
//     ),
//     Cart(
//       title: "Fruit Salad Mix",
//       price: "10,12",
//     ),
//   ];
//   // List<String> cart = [
//   //   "Watch",
//   //   "Jeans",
//   //   "Shirt",
//   //   "T-Shirt",
//   //   "Cup",
//   //   "Shoes",
//   //   "Cap",
//   //   "Shorts",
//   //   "Trouser",
//   //   "Lower",
//   // ];
//   // List<String> items = [
//   //   "Watch",
//   //   "Jeans",
//   //   "Shirt",
//   //   "T-Shirt",
//   //   "Cup",
//   //   "Shoes",
//   //   "Cap",
//   //   "Shorts",
//   //   "Trouser",
//   //   "Lower",
//   // ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.teal,
//         centerTitle: true,
//         automaticallyImplyLeading: false,
//         title: const Text("Flutter Dismissible Demo"),
//       ),
//       // body: Center(child: MyCartContent(cart: cartList[0])),
//       // /*
//       body: ListView.builder(
//         itemCount: cartList.length,
//         padding: const EdgeInsets.symmetric(vertical: 16),
//         itemBuilder: (BuildContext context, int index) {
//           return Dismissible(
//             background: Container(
//               color: Colors.blue,
//               child: const Padding(
//                 padding: EdgeInsets.all(15),
//                 child: Row(
//                   children: [
//                     Icon(Icons.favorite, color: Colors.red),
//                     SizedBox(
//                       width: 8.0,
//                     ),
//                     Text('Move to favorites',
//                         style: TextStyle(color: Colors.white)),
//                   ],
//                 ),
//               ),
//             ),
//             secondaryBackground: Container(
//               color: Colors.red,
//               child: const Padding(
//                 padding: EdgeInsets.all(15),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: [
//                     Icon(Icons.delete, color: Colors.white),
//                     SizedBox(
//                       width: 8.0,
//                     ),
//                     Text('Move to trash',
//                         style: TextStyle(color: Colors.white)),
//                   ],
//                 ),
//               ),
//             ),
//             key: UniqueKey(),
//             // key: ValueKey<Cart>(cart[index]),
//             onDismissed: (DismissDirection direction) {
//               setState(() {
//                 cartList.removeAt(index);
//               });
//             },
//             confirmDismiss: (DismissDirection direction) async {
//               if (direction == DismissDirection.startToEnd) {
//                 return await showDialog(
//                   context: context,
//                   builder: (BuildContext context) {
//                     return AlertDialog(
//                       title: const Text("Add Gift to Cart"),
//                       content: const Text(
//                           "Are you sure you want to add this gift in your cart"),
//                       actions: <Widget>[
//                         ElevatedButton(
//                             onPressed: () => Navigator.of(context).pop(true),
//                             child: const Text("Yes")),
//                         ElevatedButton(
//                           onPressed: () => Navigator.of(context).pop(false),
//                           child: const Text("No"),
//                         ),
//                       ],
//                     );
//                   },
//                 );
//               } else {
//                 return await showDialog(
//                   context: context,
//                   builder: (BuildContext context) {
//                     return AlertDialog(
//                       title: const Text("Remove Gift"),
//                       content: const Text(
//                           "Are you sure you want to remove this gift item?"),
//                       actions: <Widget>[
//                         ElevatedButton(
//                             onPressed: () => Navigator.of(context).pop(true),
//                             child: const Text("Yes")),
//                         ElevatedButton(
//                           onPressed: () => Navigator.of(context).pop(false),
//                           child: const Text("No"),
//                         ),
//                       ],
//                     );
//                   },
//                 );
//               }
//             },
//             child: ListTile(leading: Icon(Icons.abc),
//             title: Text("data"),
//             )
//           );
//         },
//       ),
//     );
//   }
// }
