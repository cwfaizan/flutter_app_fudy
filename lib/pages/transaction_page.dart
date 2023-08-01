import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fudy/widgets/transcation_history_content.dart';

import '../widgets/home_card.dart';

class TransactionPage extends StatefulWidget {
  const TransactionPage({super.key});

  @override
  State<TransactionPage> createState() => _TransactionPageState();
}

class _TransactionPageState extends State<TransactionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 53.h,
            ),
            Row(
              children: [
                const Icon(Icons.arrow_back_ios),
                SizedBox(
                  width: 78.w,
                ),
                Text(
                  "Transaction History",
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xff2F2F2F)),
                ),
              ],
            ),
            SizedBox(
              height: 28.h,
            ),
            Stack(
              children: [
                Image.asset("assets/images/purple.png"),
                ListTile(
                  title: Padding(
                    padding: EdgeInsets.only(left: 38.w, top: 25.h),
                    child: Text(
                      "Total Spending this month",
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xffffffff)),
                    ),
                  ),
                  subtitle: Padding(
                    padding: EdgeInsets.only(left: 38.w, top: 12.h),
                    child: Text(
                      "\$543.43",
                      style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xffffffff)),
                    ),
                  ),
                  trailing: Padding(
                    padding: EdgeInsets.only(top: 30.h),
                    child: SvgPicture.asset("assets/svgs/cart.svg"),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Most Purchased This Month",
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xff2F2F2F)),
                ),
                Row(
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "See All",
                        style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xff503E9D)),
                      ),
                    ),
                    const Icon(Icons.arrow_forward_ios),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            SizedBox(
              height: 225.h,
              width: double.maxFinite,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) => Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Container(
                    color: const Color(0xffffffff),
                    height: 220.h,
                    width: 123.w,
                    child: const HomeCard(
                      imageUrl: "https://via.placeholder.com/152x190",
                      title: 'Salad with Bread',
                      price: 82,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Text(
              "Transaction",
              style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xff2F2F2F)),
            ),
            SizedBox(
              height: 12.h,
            ),
            Text(
              "Find all your transactions here",
              style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xffBDBDBD)),
            ),
            SizedBox(
              height: 20.h,
            ),
            SizedBox(
              height: 220.h,
              width: double.maxFinite,
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) => Padding(
                  padding: EdgeInsets.only(bottom: 5.w),
                  child: Container(
                      color: const Color(0xffffffff),
                      height: 82.h,
                      width: double.maxFinite,
                      child: const TransactionHistory()),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
