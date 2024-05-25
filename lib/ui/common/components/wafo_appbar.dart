import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wafo/utills/navigate.dart';

AppBar wafoAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.white,
    scrolledUnderElevation: 0,
    titleSpacing: 0.0,
    title: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset('assets/svg/logo_small.svg'),
          IconButton(
            onPressed: () {
              navigateToSettingScreen(context);
            },
            icon: SvgPicture.asset('assets/svg/setting.svg'),
            style: ButtonStyle(
              overlayColor: MaterialStateProperty.all(Colors.transparent),
            ),
          ),
        ],
      ),
    ),
    bottom: PreferredSize(
      preferredSize: const Size.fromHeight(4),
      child: Container(
        height: 4,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 20,
              spreadRadius: 2,
              offset: const Offset(0, -2),
            ),
          ],
        ),
      ),
    ),
  );
}
