import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fudy/pages/login_page.dart';

class ForgotPassward extends StatefulWidget {
  const ForgotPassward({super.key});

  @override
  State<ForgotPassward> createState() => _ForgotPasswardState();
}

class _ForgotPasswardState extends State<ForgotPassward> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const LoginPage()),
              );
            },
            child: const Icon(Icons.arrow_back_ios)),
      ),
      backgroundColor: const Color(0xffE8E8E8),
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 37.h, left: 53.w, right: 53.w),
            child: Image.asset("assets/images/forgot.png"),
          ),
          Padding(
            padding: EdgeInsets.only(top: 383.h),
            child: Container(
              color: const Color(0xffffffff),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 65.h,
                    ),
                    Center(
                      child: Text(
                        "Forgot Password",
                        style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xff2F2F2F)),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Center(
                      child: Text(
                        "Lorem Ipsum dolor sit amet consecteur",
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xffBDBDBD)),
                      ),
                    ),
                    Center(
                      child: Text(
                        "lorem lorem in your email",
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xffBDBDBD)),
                      ),
                    ),
                    SizedBox(
                      height: 44.h,
                    ),
                    Text(
                      "Email",
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xff2F2F2F)),
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    SizedBox(
                      height: 72.h,
                      width: double.maxFinite,
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Insert your email here',
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
                      height: 20.h,
                    ),
                    SizedBox(
                      height: 72.h,
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
                          "Send",
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
              ),
            ),
          ),
        ],
      ),
    );
  }
}
