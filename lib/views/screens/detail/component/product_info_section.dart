import 'package:flutter/material.dart';
import 'package:home_task/model/products.dart';

import '../../../../constant/app_colors.dart';
import '../../../widgets/rating_tag.dart';

class ProductInfoSection extends StatelessWidget {
  final Product product;
  const ProductInfoSection({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Text(
                    product.name,
                    style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'poppins',
                        color: AppColor.secondary),
                  ),
                ),
                RatingTag(
                  margin: const EdgeInsets.only(left: 10),
                  value: product.rating,
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 14),
            child: Text(
              '${product.price}',
              style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'poppins',
                  color: AppColor.primary),
            ),
          ),
          Text(
            'Bringing a new look to the Waffle sneaker family, the Nike Waffle One balances everything you love about heritage Nike running with fresh innovations.',
            style: TextStyle(
                color: AppColor.secondary.withOpacity(0.7), height: 150 / 100),
          ),
        ],
      ),
    );
  }
}
