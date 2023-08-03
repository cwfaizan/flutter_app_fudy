import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePageProductDetail extends StatelessWidget {
  const HomePageProductDetail({super.key});

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
                        height: 750.h,
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
                                      width: 196.w,
                                      height: 196.h,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        "Dim Sum Vegetable ",
                                        style: TextStyle(
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w600,
                                            color: const Color(0xff2F2F2F)),
                                      ),
                                      SizedBox(
                                        height: 16.h,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          const InkWell(
                                              child: Icon(Icons.star_border)),
                                          Text(
                                            "4,5",
                                            style: TextStyle(
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.w500,
                                                color: const Color(0xffBDBDBD)),
                                          ),
                                          Text(
                                            "  12 Purchases",
                                            style: TextStyle(
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.w500,
                                                color: const Color(0xffBDBDBD)),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                  Text(
                                    "\$35",
                                    style: TextStyle(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w600,
                                      color: const Color(0xff503E9D),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 28.h,
                              ),
                              Text(
                                "Description",
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w700,
                                    color: const Color(0xff2F2F2F)),
                              ),
                              SizedBox(
                                height: 8.h,
                              ),
                              Text(
                                "Lorem Ipsum is simply dummy text of the printing\n and typesetting industry. Lorem Ipsum has been\n the industry's standard nturies  Ipsum has been the\n industry's standard nturies",
                                style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w500,
                                    color: const Color(0xffBDBDBD)),
                              ),
                              SizedBox(
                                width: 37.w,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    height: 35.h,
                                    width: 35.w,
                                    child: TextButton(
                                      onPressed: () {},
                                      style: TextButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(12.r),
                                          side: BorderSide(
                                            width: 1.sp,
                                            color: const Color(0xffE8E8E8),
                                          ),
                                        ),
                                      ),
                                      child: Center(
                                        child: Text(
                                          "-",
                                          style: TextStyle(
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 16.w,
                                  ),
                                  SizedBox(
                                    height: 35.h,
                                    width: 35.w,
                                    child: TextButton(
                                      onPressed: () {},
                                      style: TextButton.styleFrom(
                                        backgroundColor:
                                            const Color(0xffE8E8E8),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(12.r),
                                          side: BorderSide(
                                            width: 1.sp,
                                            color: const Color(0xffE8E8E8),
                                          ),
                                        ),
                                      ),
                                      child: Center(
                                        child: Text(
                                          "2",
                                          style: TextStyle(
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.w600,
                                              color: const Color(0xff503E9D)),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 16.w,
                                  ),
                                  SizedBox(
                                    height: 35.h,
                                    width: 35.w,
                                    child: TextButton(
                                      onPressed: () {},
                                      style: TextButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(12.r),
                                          side: BorderSide(
                                            width: 1.sp,
                                            color: const Color(0xff503E9D),
                                          ),
                                        ),
                                      ),
                                      child: Center(
                                        child: Text(
                                          "+",
                                          style: TextStyle(
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w600,
                                            color: const Color(0xff503E9D),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 66.w,
                                  ),
                                  SizedBox(
                                    width: 130.w,
                                    height: 45.h,
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      child: const Text(
                                        "Add to Chart",
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        )),
                  );
                },
                child: const Text(
                  'Home Page',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
