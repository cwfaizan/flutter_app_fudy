import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FavouriteCard extends StatelessWidget {
  const FavouriteCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.price,
    required this.isFavourite,
  });

  final String imageUrl;
  final String title;
  final double price;
  final bool isFavourite;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 177.w,
      height: 257.h,
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
            blurRadius: 80,
            offset: Offset(50, 20),
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
            height: 145.h,
            width: 145.w,
            child: CircleAvatar(
              backgroundImage: NetworkImage(imageUrl),
            ),
          ),
          SizedBox(height: 20.h),
          Text(
            title,
            style: const TextStyle(
              color: Color(0xFF2E2E2E),
              fontSize: 14,
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
                '\$ $price',
                style: const TextStyle(
                  color: Color(0xFF503E9D),
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  height: 2,
                  letterSpacing: 0.06,
                ),
              ),
              SvgPicture.asset(
                isFavourite ? "assets/svgs/heart.svg" : "assets/svgs/heart.svg",
                height: 20.h,
                width: 20.w,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
