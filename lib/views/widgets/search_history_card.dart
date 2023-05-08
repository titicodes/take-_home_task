import 'package:flutter/material.dart';
import '../../constant/app_colors.dart';
import '../../model/search.dart';

class SearchHistoryTile extends StatelessWidget {
  final SearchHistory data;
  final VoidCallback onTap;
  const SearchHistoryTile({super.key, required this.data, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(16),
        decoration: const BoxDecoration(
          color: Colors.white,
          border: Border(
            bottom: BorderSide(
              color: AppColor.primarySoft,
              width: 1,
            ),
          ),
        ),
        child: Text('${data.title}'),
      ),
    );
  }
}
