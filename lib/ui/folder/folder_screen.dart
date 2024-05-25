import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wafo/res/constants/color.dart';
import 'package:wafo/ui/common/components/wafo_appbar.dart';
import 'package:wafo/ui/common/layout/default_layout.dart';
import 'package:wafo/ui/home/home_screen.dart';

List<Map<String, dynamic>> folderData = [
  {"role": "add", "title": "추가", "img": "assets/svg/folder_add.svg"},
  {"role": "star", "title": "즐겨찾기", "img": "assets/svg/folder_star.svg"},
  {"role": "default", "title": "인테리어", "img": "assets/svg/folder_default.svg"},
  {"role": "default", "title": "구호", "img": "assets/svg/folder_default.svg"},
  {"role": "default", "title": "디자인링크", "img": "assets/svg/folder_default.svg"},
  {"role": "default", "title": "개발자링크", "img": "assets/svg/folder_default.svg"},
  {"role": "default", "title": "그외", "img": "assets/svg/folder_default.svg"},
];

class FolderScreen extends StatefulWidget {
  const FolderScreen({super.key});

  @override
  State<FolderScreen> createState() => _FolderScreenState();
}

class _FolderScreenState extends State<FolderScreen> {
  final TextEditingController _wafoSearchController = TextEditingController();
  final ScrollController _scrollController = ScrollController();

  late int _initIndex = 1;
  late String _initTitle = '즐겨찾기';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: DefaultLayout(
        backgroundColor: greyF2F2F2,
        appBar: wafoAppBar(context),
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
                    const SizedBox(height: 30.0),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24.0),
                      child: TextField(
                        textInputAction: TextInputAction.search,
                        controller: _wafoSearchController,
                        cursorColor: primaryColor,
                        onChanged: (value) {},
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 6.0,
                            horizontal: 20.0,
                          ),
                          hintText: '검색어를 입력해주세요.',
                          hintStyle: const TextStyle(
                            color: grey848484,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w600,
                          ),
                          filled: true,
                          fillColor: commonWhiteColor,
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: primaryColor,
                              width: 1.5,
                            ),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: primaryColor,
                              width: 1.5,
                            ),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          focusColor: commonGreyColor,
                          suffixIcon: IconButton(
                            padding: const EdgeInsets.only(right: 10.0),
                            onPressed: () {
                              setState(() {
                                _wafoSearchController.text = '';
                              });
                            },
                            icon: SvgPicture.asset(
                                'assets/svg/search_folder.svg'),
                            style: ButtonStyle(
                              overlayColor:
                                  MaterialStateProperty.all(Colors.transparent),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 26.0),
                      child: Row(
                        children: [
                          Text(
                            '${folderData.length} ',
                            style: const TextStyle(
                              color: grey333333,
                              fontWeight: FontWeight.bold,
                              fontSize: 14.0,
                            ),
                          ),
                          const Text(
                            'Folders',
                            style: TextStyle(
                              color: grey848484,
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                              letterSpacing: -0.5,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 86.0,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        physics: const BouncingScrollPhysics(),
                        itemCount: folderData.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.only(
                              left: index == 0 ? 16.0 : 0.0,
                              right:
                                  index == folderData.length - 1 ? 16.0 : 0.0,
                            ),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () {
                                setState(() {
                                  if (index == 0) return;
                                  _initIndex = index;
                                  _initTitle = folderData[index]['title'];

                                  shuffleList(homeData);
                                });
                              },
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 12.0,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(
                                      folderData[index]['img'],
                                      colorFilter: index > 0
                                          ? ColorFilter.mode(
                                              _initIndex == index
                                                  ? primary2Color
                                                  : greyC9C9C9,
                                              BlendMode.srcIn,
                                            )
                                          : null,
                                    ),
                                    const SizedBox(height: 8.0),
                                    Text(
                                      folderData[index]['title'].length > 4
                                          ? '${folderData[index]['title'].substring(0, 3)}..'
                                          : folderData[index]['title'],
                                      style: TextStyle(
                                        color: _initIndex == index
                                            ? primary2Color
                                            : grey848484,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12.0,
                                        letterSpacing: -0.2,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 4.0),
                    Container(height: 1.3, color: greyE5E5E5),
                    const SizedBox(height: 20.0),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 26.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 4.0),
                                    child: SvgPicture.asset(
                                        'assets/svg/folder_star_small.svg'),
                                  ),
                                  const SizedBox(width: 8.0),
                                  Text(
                                    _initTitle,
                                    style: const TextStyle(
                                      color: primary2Color,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                ],
                              ),
                              const Text(
                                "최신순",
                                style: TextStyle(
                                  color: grey848484,
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      keyboardDismissBehavior:
                          ScrollViewKeyboardDismissBehavior.onDrag,
                      controller: _scrollController,
                      itemCount: homeData.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          behavior: HitTestBehavior.opaque,
                          child: Container(
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
                                        color:
                                            commonBlackColor.withOpacity(0.1),
                                        blurRadius: 6,
                                        offset: const Offset(0, 4),
                                        spreadRadius: 0,
                                      )
                                    ],
                                    image: DecorationImage(
                                      image: NetworkImage(
                                          homeData[index]['imageUrl']!),
                                      onError: (exception, stackTrace) =>
                                          Image.asset(
                                        'assets/svg/wafoLogo.svg',
                                        fit: BoxFit.cover,
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 16.0),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          SvgPicture.asset(
                                              'assets/svg/folderSmall.svg'),
                                          const SizedBox(width: 6.0),
                                          Text(
                                            homeData[index]['folder']!,
                                            style: const TextStyle(
                                              color: grey989898,
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.w700,
                                              letterSpacing: -0.5,
                                            ),
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 10.0),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            homeData[index]['title']!,
                                            style: const TextStyle(
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.w700,
                                              letterSpacing: -0.5,
                                            ),
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                          Text(
                                            homeData[index]['url']!,
                                            style: const TextStyle(
                                              color: greyA1A1A1,
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.w500,
                                              letterSpacing: -0.5,
                                            ),
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 10.0),
                                      Text(
                                        homeData[index]['createdAt']!,
                                        style: const TextStyle(
                                          color: grey989898,
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.w500,
                                          letterSpacing: -0.5,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SvgPicture.asset(
                                  'assets/svg/star.svg',
                                  colorFilter: ColorFilter.mode(
                                    homeData[index]['interest']
                                        ? primaryColor
                                        : greyC9C9C9,
                                    BlendMode.srcIn,
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return const Divider(
                          thickness: 1,
                          height: 1,
                          color: greyF1F2F5,
                        );
                      },
                    ),
                    const SizedBox(height: 20.0),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void shuffleList(List<Map<String, dynamic>> list) {
    final random = Random();
    for (int i = list.length - 1; i > 0; i--) {
      int n = random.nextInt(i + 1);
      var temp = list[i];
      list[i] = list[n];
      list[n] = temp;
    }
  }
}
