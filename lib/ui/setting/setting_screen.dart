import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wafo/res/constants/color.dart';
import 'package:wafo/ui/common/layout/default_layout.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      appBar: AppBar(
        leading: Navigator.canPop(context)
            ? IconButton(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                icon: const Icon(
                  Icons.arrow_back_ios_new_rounded,
                ),
                onPressed: () => Navigator.of(context).pop(),
              )
            : null,
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0,
        titleSpacing: 0.0,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SvgPicture.asset('assets/svg/logo_small.svg'),
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
      ),
      backgroundColor: greyF2F2F2,
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics(),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 12.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20.0,
                      vertical: 14.0,
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          'assets/svg/setting.svg',
                          colorFilter: const ColorFilter.mode(
                            primary2Color,
                            BlendMode.srcIn,
                          ),
                        ),
                        const SizedBox(width: 8.0),
                        const Text(
                          "Setting",
                          style: TextStyle(
                            color: primaryColor,
                            fontSize: 24.0,
                            fontWeight: FontWeight.w900,
                            letterSpacing: -0.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 12.0),
                  Container(height: 2, color: greyD9D9D9),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24.0,
                      vertical: 16.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "공지사항",
                          style: TextStyle(
                            color: grey333333,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w900,
                            letterSpacing: -0.5,
                          ),
                        ),
                        SvgPicture.asset('assets/svg/arrow_right.svg'),
                      ],
                    ),
                  ),
                  Container(height: 1.3, color: greyE5E5E5),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24.0,
                      vertical: 16.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "이용약관 및 정책",
                          style: TextStyle(
                            color: grey333333,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w900,
                            letterSpacing: -0.5,
                          ),
                        ),
                        SvgPicture.asset('assets/svg/arrow_right.svg'),
                      ],
                    ),
                  ),
                  Container(height: 1.3, color: greyE5E5E5),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24.0,
                      vertical: 16.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "1:1 문의",
                          style: TextStyle(
                            color: grey333333,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w900,
                            letterSpacing: -0.5,
                          ),
                        ),
                        SvgPicture.asset('assets/svg/arrow_right.svg'),
                      ],
                    ),
                  ),
                  Container(height: 1.3, color: greyE5E5E5),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24.0,
                      vertical: 16.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "로그아웃",
                          style: TextStyle(
                            color: grey333333,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w900,
                            letterSpacing: -0.5,
                          ),
                        ),
                        SvgPicture.asset('assets/svg/arrow_right.svg'),
                      ],
                    ),
                  ),
                  Container(height: 1.3, color: greyE5E5E5),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24.0,
                      vertical: 16.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "탈퇴하기",
                          style: TextStyle(
                            color: grey333333,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w900,
                            letterSpacing: -0.5,
                          ),
                        ),
                        SvgPicture.asset('assets/svg/arrow_right.svg'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
