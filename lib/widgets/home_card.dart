import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:like_button/like_button.dart';

class HomeCard extends StatefulWidget {
  const HomeCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.price,
  });

  final String imageUrl;
  final String title;
  final double price;

  @override
  State<HomeCard> createState() => _HomeCardState();
}

class _HomeCardState extends State<HomeCard> {
  bool isLiked = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 123.w,
      height: 202.h,
      padding: REdgeInsets.all(16),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 0.50, color: Colors.white),
          borderRadius: BorderRadius.circular(20),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x19000000),
            blurRadius: 40,
            offset: Offset(25, 10),
            spreadRadius: 0,
          )
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 90.h,
            width: 90.w,
            child: CircleAvatar(
              backgroundImage: NetworkImage(widget.imageUrl),
            ),
          ),
          SizedBox(height: 12.h),
          Text(
            widget.title,
            style: const TextStyle(
              color: Color(0xFF2E2E2E),
              fontSize: 12,
              fontWeight: FontWeight.w700,
              height: 2,
              letterSpacing: 0.07,
            ),
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '\$ ${widget.price}',
                style: const TextStyle(
                  color: Color(0xFF503E9D),
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  height: 2,
                  letterSpacing: 0.06,
                ),
              ),
              LikeButton(
                isLiked: isLiked,
              )
              // SvgPicture.asset(
              //   isFavourite ? "assets/svgs/heart.svg" : "assets/svgs/heart.svg",
              //   height: 20.h,
              //   width: 20.w,
              // ),
            ],
          ),
        ],
      ),
    );
  }
}
