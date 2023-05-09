import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../constant/app_colors.dart';
import '../../../model/products.dart';
import '../../widgets/add_to_cart_model.dart';

class ProductDetailScreen extends StatefulWidget {
  final Product product;
  const ProductDetailScreen({super.key, required this.product});

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(16),
          decoration: const BoxDecoration(
            color: Colors.white,
            border: Border(
              top: BorderSide(color: AppColor.border, width: 1),
            ),
          ),
          child: Row(
            children: [
              Container(
                width: 64,
                height: 64,
                margin: const EdgeInsets.only(right: 14),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColor.secondary,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)),
                    elevation: 0,
                  ),
                  onPressed: () {},
                  child: Image.asset(
                    'assets/icons/comment.png',
                    color: Colors.white,
                  ),
                ),
              ),
              Expanded(
                child: SizedBox(
                  height: 64,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColor.primary,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16)),
                      elevation: 0,
                    ),
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        backgroundColor: Colors.transparent,
                        builder: (context) {
                          return const AddToCartModal();
                        },
                      );
                    },
                    child: const Text(
                      'Add To Cart',
                      style: TextStyle(
                          fontFamily: 'poppins',
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                          fontSize: 16),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        body: ListView(
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            children: [
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  // product image
                  // GestureDetector(
                  //   onTap: () {
                  //     Navigator.of(context).push(
                  //       MaterialPageRoute(
                  //         builder: (context) =>
                  //             ImageViewer(imageUrl: product.image),
                  //       ),
                  //     );
                  //   },
                  //   child: Container(
                  //     width: MediaQuery.of(context).size.width,
                  //     height: 310,
                  //     color: Colors.white,
                  //     child: PageView(
                  //       physics: BouncingScrollPhysics(),
                  //       controller: productImageSlider,
                  //       children: List.generate(
                  //         product.image.length,
                  //         (index) => Image.asset(
                  //           product.image[index],
                  //           fit: BoxFit.cover,
                  //         ),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ]));
  }
}
