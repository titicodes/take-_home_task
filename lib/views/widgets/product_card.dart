import 'package:flutter/material.dart';
import 'package:home_task/views/screens/detail/detail_screen.dart';
import '../../constant/app_colors.dart';
import '../../model/products.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => ProductDetailScreen(product: product)));
      },
      child: Container(
        width: MediaQuery.of(context).size.width / 2 - 16 - 8,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // item image
            Container(
              width: MediaQuery.of(context).size.width / 2 - 16 - 8,
              height: MediaQuery.of(context).size.width / 2 - 16 - 8,
              padding: const EdgeInsets.all(10),
              alignment: Alignment.topRight,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: DecorationImage(
                    image: AssetImage(product.image[0]), fit: BoxFit.cover),
              ),
              child: IconButton(icon: Icon(Icons.heart_broken, color: ,), onPressed: () {  },),
            ),

            // item details
            Container(
              padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.name,
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 2, bottom: 8),
                    child: Text(
                      '${product.price}',
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Poppins',
                        color: AppColor.primary,
                      ),
                    ),
                  ),
                  Text(
                    product.storeName,
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 10,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
