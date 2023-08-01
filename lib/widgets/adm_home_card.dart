import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AdmHomeCard extends StatelessWidget {
  const AdmHomeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 374.w,
      height: 82.h,
      padding: REdgeInsets.all(16),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 0.50, color: Color(0xFFE7E7E7)),
          borderRadius: BorderRadius.circular(16.r),
        ),
      ),
      child: Padding(
        padding: REdgeInsets.all(16.0),
        child: const Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [],
        ),
      ),
    );
  }
}
