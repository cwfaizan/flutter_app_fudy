import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/flutter_svg.dart';

class TransactionHistory extends StatefulWidget {
  const TransactionHistory({super.key});

  @override
  State<TransactionHistory> createState() => _TransactionHistoryState();
}

class _TransactionHistoryState extends State<TransactionHistory> {
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
            "Double Sandwich",
            style: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w700,
              color: const Color(0xff2F2F2F),
            ),
          ),
          subtitle: Text(
            "2 Item - 1 Days ago",
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
