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
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(32.r)),
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
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 32.h,
                        ),
                        SizedBox(
                          height: 57.h,
                          width: double.maxFinite,
                          child: FilledButton(
                            onPressed: () {},
                            child: const Text(
                              "Done",
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
            );
          },
          child: const Text("data"),
        ),
      ),
    );
  }
}
