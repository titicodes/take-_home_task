import 'package:flutter/material.dart';
import '../../../constant/app_colors.dart';
import '../../../model/products.dart';
import '../../../service/category_service.dart';
import '../../../service/product_service.dart';

import '../../widgets/category_card.dart';
import '../../widgets/main_app_bar.dart';
import '../../widgets/product_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List categoryData = CategoryService.categoryData;
  List<Product> productData = ProductService.productData;
  PageController bannerController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const MainAppBar(
          cartValue: 2,
          chatValue: 2,
        ),
        body: ListView(
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            children: [
              //Banner Secction
              const SizedBox(
                height: 20,
              ),

              // Category list
              Container(
                margin: const EdgeInsets.only(top: 12),
                height: 96,
                child: ListView.separated(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  itemCount: categoryData.length,
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return const SizedBox(width: 16);
                  },
                  itemBuilder: (context, index) {
                    return CategoryCard(
                      data: categoryData[index],
                      onTap: () {},
                    );
                  },
                ),
              ),

              // Section 2 - category
              Container(
                width: MediaQuery.of(context).size.width,
                //color: AppColor.secondary,
                padding: const EdgeInsets.only(top: 12, bottom: 24),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Base Sales Product',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                          TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.white,
                            ),
                            child: Text(
                              'See More',
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.7),
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                child: Wrap(
                  spacing: 16,
                  runSpacing: 16,
                  children: List.generate(
                    productData.length,
                    (index) => ProductCard(
                      product: productData[index],
                    ),
                  ),
                ),
              )
            ]));
  }
}
