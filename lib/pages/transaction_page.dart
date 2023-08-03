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
// bottomSheet:                   showModalBottomSheet(
//                     context: context,
//                     builder: (context) => Container(
//                       decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(32.r)),
//                       height: 600.h,
//                       width: double.maxFinite,
//                       child: Padding(
//                         padding: EdgeInsets.only(left: 20.w, right: 20.w),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//                                 Center(
//                                   child: Image.asset(
//                                     "assets/images/re.png",
//                                     height: 95.h,
//                                     width: 95.h,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                             Text(
//                               "Description",
//                               style: TextStyle(
//                                   fontSize: 14.sp,
//                                   fontWeight: FontWeight.w700,
//                                   color: const Color(0xff2F2F2F)),
//                             ),
//                             SizedBox(
//                               height: 4.h,
//                             ),
//                             Text(
//                               "Lorem Ipsum is simply dummy text of the printing\n and typesetting industry.  Ipsum has been the\n industry's standard nturies",
//                               style: TextStyle(
//                                   fontSize: 12.sp,
//                                   fontWeight: FontWeight.w500,
//                                   color: const Color(0xffBDBDBD)),
//                             ),
//                             SizedBox(
//                               height: 15.h,
//                             ),
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.start,
//                               children: [
//                                 SizedBox(
//                                   width: 21.w,
//                                 ),
//                                 const Icon(Icons.person),
//                                 SizedBox(
//                                   width: 19.w,
//                                 ),
//                                 Column(
//                                   children: [
//                                     Text(
//                                       "Tony Lawawa",
//                                       style: TextStyle(
//                                           fontSize: 12.sp,
//                                           fontWeight: FontWeight.w700,
//                                           color: const Color(0xff2F2F2F)),
//                                     ),
//                                     Text(
//                                       "Shippers’s Name",
//                                       style: TextStyle(
//                                           fontSize: 12.sp,
//                                           fontWeight: FontWeight.w500,
//                                           color: const Color(0xffBDBDBD)),
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                             SizedBox(
//                               height: 15.h,
//                             ),
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.start,
//                               children: [
//                                 SizedBox(
//                                   width: 21.w,
//                                 ),
//                                 const Icon(Icons.home),
//                                 SizedBox(
//                                   width: 19.w,
//                                 ),
//                                 Column(
//                                   children: [
//                                     Text(
//                                       "Dominic Street 47, West Hampton",
//                                       style: TextStyle(
//                                           fontSize: 12.sp,
//                                           fontWeight: FontWeight.w700,
//                                           color: const Color(0xff2F2F2F)),
//                                     ),
//                                     Text(
//                                       "Delivery Point",
//                                       style: TextStyle(
//                                           fontSize: 12.sp,
//                                           fontWeight: FontWeight.w500,
//                                           color: const Color(0xffBDBDBD)),
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                             SizedBox(
//                               height: 15.h,
//                             ),
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.start,
//                               children: [
//                                 SizedBox(
//                                   width: 21.w,
//                                 ),
//                                 const Icon(Icons.credit_card),
//                                 SizedBox(
//                                   width: 19.w,
//                                 ),
//                                 Column(
//                                   children: [
//                                     Text(
//                                       "Credit Card ",
//                                       style: TextStyle(
//                                           fontSize: 12.sp,
//                                           fontWeight: FontWeight.w700,
//                                           color: const Color(0xff2F2F2F)),
//                                     ),
//                                     Text(
//                                       "Payment Method",
//                                       style: TextStyle(
//                                           fontSize: 12.sp,
//                                           fontWeight: FontWeight.w500,
//                                           color: const Color(0xffBDBDBD)),
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                             SizedBox(
//                               height: 15.h,
//                             ),
//                             SizedBox(
//                               width: double.maxFinite,
//                               child: FilledButton(
//                                 onPressed: () {},
//                                 child: const Text(
//                                   "Leave a review",
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   );,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 53.h,
              ),
              Row(
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(Icons.arrow_back_ios)),
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
                height: 20.h,
              ),
              Stack(
                children: [
                  Image.asset("assets/images/purple.png"),
                  ListTile(
                    title: Padding(
                      padding: EdgeInsets.only(left: 30.w, top: 20.h),
                      child: Text(
                        "Total Spending this month",
                        style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xffffffff)),
                      ),
                    ),
                    subtitle: Padding(
                      padding: EdgeInsets.only(left: 30.w, top: 12.h),
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
                height: 20.h,
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
                height: 10.h,
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
                height: 15.h,
              ),
              Text(
                "Transaction",
                style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xff2F2F2F)),
              ),
              SizedBox(
                height: 8.h,
              ),
              Text(
                "Find all your transactions here",
                style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xffBDBDBD)),
              ),
              // SizedBox(
              //   height: 10.h,
              // ),
              SizedBox(
                height: double.maxFinite,
                width: double.maxFinite,
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) => Padding(
                    padding: EdgeInsets.only(bottom: 10.w),
                    child: Container(
                        color: const Color(0xffffffff),
                        height: 65.h,
                        width: double.maxFinite,
                        child: const TransactionHistory()),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
