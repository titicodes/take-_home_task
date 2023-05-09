import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
              child: Icon(
                Icons.heart_broken,
                color: product.isFavourite! ? Colors.pinkAccent : Colors.grey,
              ),
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
                      product.description,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Poppins',
                        color: AppColor.primary,
                      ),
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(children: [
                          Image.asset('assets/icons/star_rating.png'),
                          RichText(
                            text: TextSpan(
                              text: '${product.rating}',
                              style: DefaultTextStyle.of(context).style,
                              children: const <TextSpan>[
                                TextSpan(
                                    text: '|',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                TextSpan(
                                  text: '2356',
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16),
                                ),
                              ],
                            ),
                          )
                        ]),
                      ),
                      Text(
                        "${product.price}",
                        style: const TextStyle(
                            color: AppColor.primary,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      )
                    ],
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
