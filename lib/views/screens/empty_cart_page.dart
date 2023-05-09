import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:home_task/views/screens/page_switcher.dart';

import '../../constant/app_colors.dart';

class EmptyCartPage extends StatelessWidget {
  const EmptyCartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Column(
          children: [
            const Text('Your Cart',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w600)),
            Text('Empty',
                style: TextStyle(
                    fontSize: 10, color: Colors.black.withOpacity(0.7))),
          ],
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          //icon: SvgPicture.asset('assets/icons/Arrow-left.svg'),
          icon: Image.asset(
            'assets/icons/back.png',
            color: Colors.white,
          ),
        ),
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 164,
              height: 164,
              margin: const EdgeInsets.only(bottom: 32),
              child: Image.asset('assets/icons/briefcase.png'),
            ),
            const Text(
              'Empty Cart  ☹️',
              style: TextStyle(
                color: AppColor.secondary,
                fontSize: 24,
                fontWeight: FontWeight.w700,
                fontFamily: 'poppins',
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 48, top: 12),
              child: Text(
                'Go to home and explore our interesting \nproducts and add to cart',
                style: TextStyle(color: AppColor.secondary.withOpacity(0.8)),
                textAlign: TextAlign.center,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => PageSwitcher()));
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: AppColor.primary,
                backgroundColor: AppColor.border,
                padding:
                    const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
                shadowColor: Colors.transparent,
              ),
              child: const Text(
                'Start Shopping',
                style: TextStyle(
                    fontWeight: FontWeight.w600, color: AppColor.secondary),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
