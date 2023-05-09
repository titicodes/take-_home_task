import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:home_task/views/screens/message_screen.dart';

import '../../constant/app_colors.dart';
import '../screens/cart_screen.dart';
import '../screens/search/search_screen.dart';
import 'custom_icon_with_counter.dart';
import 'dummy_search_widget.dart';

class MainAppBar extends StatefulWidget implements PreferredSizeWidget {
  final int cartValue;
  final int chatValue;

  const MainAppBar({
    super.key,
    required this.cartValue,
    required this.chatValue,
  });

  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  _MainAppBarState createState() => _MainAppBarState();
}

class _MainAppBarState extends State<MainAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      centerTitle: false,
      backgroundColor: AppColor.primary,
      elevation: 0,
      title: Row(
        children: [
          DummySearchWidget2(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const SearchPage(),
                ),
              );
            },
          ),
          CustomIconButtonWidget(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const CartScreen()));
            },
            value: widget.cartValue,
            margin: const EdgeInsets.only(left: 16),
            icon: Icon(
              Icons.card_travel,
              // 'assets/icons/briefcase.png',
              color: Colors.white,
            ),
          ),
          CustomIconButtonWidget(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const MessageScreen()));
            },
            value: widget.chatValue,
            margin: const EdgeInsets.only(left: 16),
            icon: Icon(
              Icons.card_travel,
              color: Colors.white,
            ),
          ),
        ],
      ),
      systemOverlayStyle: SystemUiOverlayStyle.light,
    );
  }
}
