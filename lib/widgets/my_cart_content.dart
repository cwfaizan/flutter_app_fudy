// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/flutter_svg.dart';

// import '../models/list_tile_class.dart';

// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../models/list_tile_class.dart';

class MyCartContent extends StatelessWidget {
  final Cart cart;
  const MyCartContent({super.key,required this.cart});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListTile(
          shape: RoundedRectangleBorder(
            side: BorderSide(color: const Color(0xffE8E8E8), width: 1.sp),
            borderRadius: BorderRadius.circular(16.r),
          ),
          leading: Image.asset("assets/images/recipe.png"),
          title: Text(
           cart.title,
            style: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w700,
              color: const Color(0xff2F2F2F),
            ),
          ),
          subtitle: Text(
            cart.price,
            style: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w500,
              color: const Color(0xffBDBDBD),
            ),
          ),
          trailing: Text(
            "\$20",
            style: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w600,
              color: const Color(0xff503E9D),
            ),
          ),
        ),
      ),
    );
  }
}

// class MyCartContent extends StatelessWidget {
//   // final Cart cart;
//   const MyCartContent({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       shape: RoundedRectangleBorder(
//         side: BorderSide(color: const Color(0xff2F2F2F), width: 1.sp),
//         borderRadius: BorderRadius.circular(16.r),
//       ),
//       leading: SvgPicture.asset("assets/svgs/one.svg"),
//       title: Text(
//         "RECIPE",
//         style: TextStyle(
//           fontSize: 12.sp,
//           fontWeight: FontWeight.w700,
//           color: const Color(0xff2F2F2F),
//         ),
//       ),
//       subtitle: Text(
//         "89",
//         style: TextStyle(
//           fontSize: 12.sp,
//           fontWeight: FontWeight.w500,
//           color: const Color(0xff2F2F2F),
//         ),
//       ),
//       // trailing: Row(
//       //   children: [
//       //     SizedBox(
//       //       height: 28.h,
//       //       width: 28.w,
//       //       child: TextButton(
//       //         onPressed: () {},
//       //         style: TextButton.styleFrom(
//       //           shape: RoundedRectangleBorder(
//       //             borderRadius: BorderRadius.circular(12.r),
//       //             side: BorderSide(
//       //               width: 1.sp,
//       //               color: const Color(0xffE8E8E8),
//       //             ),
//       //           ),
//       //         ),
//       //         child: Center(
//       //           child: Text(
//       //             "-",
//       //             style: TextStyle(
//       //               fontSize: 16.sp,
//       //               fontWeight: FontWeight.w600,
//       //             ),
//       //           ),
//       //         ),
//       //       ),
//       //     ),
//       //     // SizedBox(
//       //     //   width: 16.w,
//       //     // ),
//       //     // SizedBox(
//       //     //   height: 46.h,
//       //     //   width: 46.w,
//       //     //   child: TextButton(
//       //     //     onPressed: () {},
//       //     //     style: TextButton.styleFrom(
//       //     //       backgroundColor: const Color(0xffE8E8E8),
//       //     //       shape: RoundedRectangleBorder(
//       //     //         borderRadius:
//       //     //             BorderRadius.circular(12.r),
//       //     //         side: BorderSide(
//       //     //           width: 1.sp,
//       //     //           color: const Color(0xffE8E8E8),
//       //     //         ),
//       //     //       ),
//       //     //     ),
//       //     //     child: Center(
//       //     //       child: Text(
//       //     //         "2",
//       //     //         style: TextStyle(
//       //     //             fontSize: 16.sp,
//       //     //             fontWeight: FontWeight.w600,
//       //     //             color: const Color(0xff503E9D)),
//       //     //       ),
//       //     //     ),
//       //     //   ),
//       //     // ),
//       //     SizedBox(
//       //       width: 16.w,
//       //     ),
//       //     SizedBox(
//       //       height: 28.h,
//       //       width: 28.w,
//       //       child: TextButton(
//       //         onPressed: () {},
//       //         style: TextButton.styleFrom(
//       //           shape: RoundedRectangleBorder(
//       //             borderRadius: BorderRadius.circular(12.r),
//       //             side: BorderSide(
//       //               width: 1.sp,
//       //               color: const Color(0xff503E9D),
//       //             ),
//       //           ),
//       //         ),
//       //         child: Center(
//       //           child: Text(
//       //             "+",
//       //             style: TextStyle(
//       //               fontSize: 16.sp,
//       //               fontWeight: FontWeight.w600,
//       //               color: const Color(0xff503E9D),
//       //             ),
//       //           ),
//       //         ),
//       //       ),
//       //     ),
//       //   ],
//       // ),
//     );
//   }
// }
