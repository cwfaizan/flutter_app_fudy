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
      body: Column(
        children: [
          Center(child: Image.asset("assets/images/forgot.png")),
          Container(
            height: 416,
            color: const Color(0xffffffff),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 50.h,
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
                    height: 20.h,
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
                    width: double.maxFinite,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Insert your email here',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  SizedBox(
                    width: double.maxFinite,
                    child: FilledButton(
                      onPressed: () {},
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
        ],
      ),
    );
  }
}
