import 'package:flutter/material.dart';
import 'package:home_task/constant/app_colors.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          image: const DecorationImage(
              image: AssetImage('assets/images/banner_background.png'))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            '#FASHION DAY',
            style: TextStyle(
                color: AppColor.secondary,
                fontWeight: FontWeight.w500,
                fontSize: 13.0),
          ),
          const Text(
            '80% OFF',
            style: TextStyle(
                color: AppColor.secondary,
                fontWeight: FontWeight.w500,
                fontSize: 13.0),
          ),
          const SizedBox(
            height: 6,
          ),
          const Text(
            'Discover Fashion that fits your style',
            style: TextStyle(
                color: AppColor.secondary,
                fontSize: 12.0,
                fontFamily: 'poppins'),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8), color: Colors.black),
            child: const Text(
              'Check this out',
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'poppins',
                  fontWeight: FontWeight.w400,
                  fontSize: 12),
            ),
          )
        ],
      ),
    );
  }
}
