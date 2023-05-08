import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constant/app_colors.dart';
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
                  builder: (context) => SearchPage(),
                ),
              );
            },
          ),
          CustomIconButtonWidget(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => CartPage()));
            },
            value: widget.cartValue,
            margin: EdgeInsets.only(left: 16),
            icon: SvgPicture.asset(
              'assets/icons/Bag.svg',
              color: Colors.white,
            ),
          ),
          CustomIconButtonWidget(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => MessagePage()));
            },
            value: widget.chatValue,
            margin: const EdgeInsets.only(left: 16),
            icon: SvgPicture.asset(
              'assets/icons/Chat.svg',
              color: Colors.white,
            ),
          ),
        ],
      ),
      systemOverlayStyle: SystemUiOverlayStyle.light,
    );
  }
}
