import 'package:flutter/material.dart';

import '../../constant/app_colors.dart';
import '../../model/search.dart';

class ProductSearchCard extends StatelessWidget {
  final ProductSearch data;
  final VoidCallback onTap;
  const ProductSearchCard({super.key, required this.data, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width / 2,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Row(
          children: [
            Container(
              width: 46,
              height: 46,
              margin: const EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                color: AppColor.primarySoft,
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                  image: AssetImage('${data.imageUrl}'),
                ),
              ),
            ),
            Expanded(
              child: Text('${data.title}'),
            ),
          ],
        ),
      ),
    );
  }
}
