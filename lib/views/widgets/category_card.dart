import 'package:flutter/material.dart';
import '../../model/category.dart';

class CategoryCard extends StatelessWidget {
  final Category data;
  final VoidCallback onTap;
  const CategoryCard({super.key, required this.data, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 80,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.white.withOpacity(0.15), width: 1),
          color: (data.featured == true)
              ? Colors.white.withOpacity(0.10)
              : Colors.transparent,
        ),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 6),
              child: Image.asset(
                // ignore: unnecessary_string_interpolations
                '${data.iconUrl}',
                color: Colors.white,
              ),
            ),
            Flexible(
              child: Text(
                data.name,
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.white, fontSize: 12),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
