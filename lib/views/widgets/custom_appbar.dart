import 'package:flutter/material.dart';

import '../../constant/app_colors.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    required this.title,
    required this.leftIcon,
    required this.rightIcon,
    required this.leftOnTap,
    required this.rightOnTap,
  });

  final String title;
  final VoidCallback rightOnTap, leftOnTap;
  final Widget rightIcon, leftIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        height: 54,
        margin: const EdgeInsets.only(top: 14),
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 40,
              height: 40,
              child: ElevatedButton(
                onPressed: leftOnTap,
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  primary: AppColor.primarySoft,
                  elevation: 0,
                  onPrimary: AppColor.primary,
                  padding: const EdgeInsets.all(8),
                ),
                child: leftIcon,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 5.5 / 10,
              height: 40,
              decoration: BoxDecoration(
                  color: AppColor.primarySoft,
                  borderRadius: BorderRadius.circular(15)),
              alignment: Alignment.center,
              child: Text(
                title,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              width: 40,
              height: 40,
              child: ElevatedButton(
                onPressed: rightOnTap,
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  primary: AppColor.primarySoft,
                  elevation: 0,
                  onPrimary: AppColor.primary,
                  padding: const EdgeInsets.all(8),
                ),
                child: rightIcon,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
