import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TrancationBottomSheet extends StatelessWidget {
  const TrancationBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) => Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(32.r)),
                        height: 600.h,
                        width: double.maxFinite,
                        child: Padding(
                          padding: EdgeInsets.only(left: 20.w, right: 20.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Center(
                                    child: Image.asset(
                                      "assets/images/re.png",
                                      height: 95.h,
                                      width: 95.h,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                "Description",
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w700,
                                    color: const Color(0xff2F2F2F)),
                              ),
                              SizedBox(
                                height: 4.h,
                              ),
                              Text(
                                "Lorem Ipsum is simply dummy text of the printing\n and typesetting industry.  Ipsum has been the\n industry's standard nturies",
                                style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w500,
                                    color: const Color(0xffBDBDBD)),
                              ),
                              SizedBox(
                                height: 15.h,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 21.w,
                                  ),
                                  const Icon(Icons.person),
                                  SizedBox(
                                    width: 19.w,
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        "Tony Lawawa",
                                        style: TextStyle(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w700,
                                            color: const Color(0xff2F2F2F)),
                                      ),
                                      Text(
                                        "Shippers’s Name",
                                        style: TextStyle(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w500,
                                            color: const Color(0xffBDBDBD)),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 15.h,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 21.w,
                                  ),
                                  const Icon(Icons.home),
                                  SizedBox(
                                    width: 19.w,
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        "Dominic Street 47, West Hampton",
                                        style: TextStyle(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w700,
                                            color: const Color(0xff2F2F2F)),
                                      ),
                                      Text(
                                        "Delivery Point",
                                        style: TextStyle(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w500,
                                            color: const Color(0xffBDBDBD)),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 15.h,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 21.w,
                                  ),
                                  const Icon(Icons.credit_card),
                                  SizedBox(
                                    width: 19.w,
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        "Credit Card ",
                                        style: TextStyle(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w700,
                                            color: const Color(0xff2F2F2F)),
                                      ),
                                      Text(
                                        "Payment Method",
                                        style: TextStyle(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w500,
                                            color: const Color(0xffBDBDBD)),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 15.h,
                              ),
                              SizedBox(
                                width: double.maxFinite,
                                child: FilledButton(
                                  onPressed: () {},
                                  child: const Text(
                                    "Leave a review",
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )),
                  );
                },
                child: const Text(
                  'Home Page',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
