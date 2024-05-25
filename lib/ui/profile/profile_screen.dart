import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wafo/res/constants/color.dart';
import 'package:wafo/ui/common/components/wafo_appbar.dart';
import 'package:wafo/ui/common/layout/default_layout.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: DefaultLayout(
        appBar: wafoAppBar(context),
        backgroundColor: greyF2F2F2,
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                keyboardDismissBehavior:
                    ScrollViewKeyboardDismissBehavior.onDrag,
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
                            'assets/svg/profile.svg',
                            colorFilter: const ColorFilter.mode(
                              primary2Color,
                              BlendMode.srcIn,
                            ),
                          ),
                          const SizedBox(width: 8.0),
                          const Text(
                            "My Page",
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
                    Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 20.0,
                        vertical: 4.0,
                      ),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: commonWhiteColor,
                        border: Border.all(color: commonWhiteColor),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 92,
                            height: 92,
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              shadows: [
                                BoxShadow(
                                  color: commonBlackColor.withOpacity(0.1),
                                  blurRadius: 8,
                                  offset: const Offset(0, 2),
                                  spreadRadius: 0,
                                )
                              ],
                              image: DecorationImage(
                                image: const NetworkImage(
                                    'https://img.freepik.com/premium-vector/cartoon-cute-whale-vector-illustration_472998-46.jpg'),
                                onError: (exception, stackTrace) => Image.asset(
                                  'assets/svg/wafoLogo.svg',
                                  fit: BoxFit.cover,
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(width: 16.0),
                          const Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '행복한 고래님',
                                  style: TextStyle(
                                    color: grey333333,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w900,
                                    letterSpacing: -0.5,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Text(
                                  'heeyoug09@gmail.com',
                                  style: TextStyle(
                                    color: grey848484,
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: -0.5,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 24.0),
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
                            "닉네임 변경",
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
                            "이메일 변경",
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
                            "My Folder",
                            style: TextStyle(
                              color: grey333333,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w700,
                              letterSpacing: -0.5,
                            ),
                          ),
                          Row(
                            children: [
                              const Text(
                                "6 ",
                                style: TextStyle(
                                  color: grey333333,
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: -0.5,
                                ),
                              ),
                              const Text(
                                "Folder",
                                style: TextStyle(
                                  color: grey848484,
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: -0.5,
                                ),
                              ),
                              const SizedBox(width: 8.0),
                              SvgPicture.asset('assets/svg/arrow_right.svg'),
                            ],
                          ),
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
                            "My URL",
                            style: TextStyle(
                              color: grey333333,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w700,
                              letterSpacing: -0.5,
                            ),
                          ),
                          Row(
                            children: [
                              const Text(
                                "12 ",
                                style: TextStyle(
                                  color: grey333333,
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: -0.5,
                                ),
                              ),
                              const Text(
                                "URL",
                                style: TextStyle(
                                  color: grey848484,
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: -0.5,
                                ),
                              ),
                              const SizedBox(width: 8.0),
                              SvgPicture.asset('assets/svg/arrow_right.svg'),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
