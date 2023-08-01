import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SpecialRequest extends StatefulWidget {
  const SpecialRequest({super.key});

  @override
  State<SpecialRequest> createState() => _SpecialRequestState();
}

class _SpecialRequestState extends State<SpecialRequest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
            onTap: () {
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                builder: (context) => Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(32.r)),
                    height: 591.h,
                    width: double.maxFinite,
                    child: Padding(
                      padding: EdgeInsets.only(left: 20.w, right: 20.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Image.asset(
                              "assets/images/re.png",
                              width: 196.w,
                              height: 196.h,
                            ),
                          ),
                          Text(
                            "Special request",
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w700,
                                color: const Color(0xff2F2F2F)),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          SizedBox(
                            height: 172.h,
                            width: double.maxFinite,
                            child: TextFormField(
                              keyboardType: TextInputType.multiline,
                              maxLines: 5,
                              decoration: InputDecoration(
                                hintText: 'Write your special request',
                                hintStyle: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0xffBDBDBD),
                                ),
                                filled: true,
                                fillColor: const Color(0xffffffff),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(0.r),
                                  borderSide: const BorderSide(
                                    width: 1,
                                    color: Color(0xffE8E8E8),
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12.r),
                                  borderSide: const BorderSide(
                                    width: 1,
                                    color: Color(0xffE8E8E8),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 32.h,
                          ),
                          SizedBox(
                            height: 57.h,
                            width: double.maxFinite,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xff503E9D),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12.r),
                                ),
                              ),
                              child: Text(
                                "Done",
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0xffFDFDFD),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )),
              );
            },
            child: const Text("data")),
      ),
    );
  }
}
