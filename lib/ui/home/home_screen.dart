import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wafo/res/constants/color.dart';
import 'package:wafo/ui/common/layout/default_layout.dart';
import 'package:wafo/utills/navigate.dart';

List<Map<String, dynamic>> homeData = [
  {
    "imageUrl":
        "https://www.unicef.or.kr/campaign/results/2022/assets/images/UN0803447.jpg",
    "folder": "구호",
    "title": "유니세프",
    "url": "www.unicef.or.kr",
    "createdAt": "2024.04.16",
    "interest": false,
  },
  {
    "imageUrl":
        "https://yt3.googleusercontent.com/y_esGAQOhX4rTpWvrALErAJlFbm_2TIVrvcVfcZny7TuA8dJZgOQcC6KRfd_J5hljFe-foYXj9U=s900-c-k-c0x00ffffff-no-rj",
    "folder": "해외",
    "title": "BBC",
    "url": "www.bbc.com",
    "createdAt": "2024.04.12",
    "interest": true,
  },
  {
    "imageUrl":
        "https://image-cdn.hypb.st/https%3A%2F%2Fkr.hypebeast.com%2Ffiles%2F2021%2F12%2Fikea-increase-products-price-worldwide-01.jpg?cbr=1&q=90",
    "folder": "인테리어",
    "title": "이케아",
    "url": "www.ikea.com/kr/ko/kr/ko/kr/ko/kr/ko/kr/ko",
    "createdAt": "2024.04.01",
    "interest": false,
  },
  {
    "imageUrl":
        "https://image-cdn.hypb.st/https%3A%2F%2Fkr.hypebeast.com%2Ffiles%2F2021%2F12%2Fikea-increase-products-price-worldwide-01.jpg?cbr=1&q=90",
    "folder": "인테리어",
    "title": "이케아",
    "url": "www.ikea.com/kr/ko/kr/ko/kr/ko/kr/ko/kr/ko",
    "createdAt": "2024.04.01",
    "interest": true,
  },
  {
    "imageUrl":
        "https://yt3.googleusercontent.com/y_esGAQOhX4rTpWvrALErAJlFbm_2TIVrvcVfcZny7TuA8dJZgOQcC6KRfd_J5hljFe-foYXj9U=s900-c-k-c0x00ffffff-no-rj",
    "folder": "해외",
    "title": "BBC",
    "url": "www.bbc.com",
    "createdAt": "2024.04.12",
    "interest": false,
  },
  {
    "imageUrl":
        "https://image-cdn.hypb.st/https%3A%2F%2Fkr.hypebeast.com%2Ffiles%2F2021%2F12%2Fikea-increase-products-price-worldwide-01.jpg?cbr=1&q=90",
    "folder": "인테리어",
    "title": "이케아",
    "url": "www.ikea.com/kr/ko/kr/ko/kr/ko/kr/ko/kr/ko",
    "createdAt": "2024.04.01",
    "interest": true,
  },
  {
    "imageUrl":
        "https://yt3.googleusercontent.com/y_esGAQOhX4rTpWvrALErAJlFbm_2TIVrvcVfcZny7TuA8dJZgOQcC6KRfd_J5hljFe-foYXj9U=s900-c-k-c0x00ffffff-no-rj",
    "folder": "해외",
    "title": "BBC",
    "url": "www.bbc.com",
    "createdAt": "2024.04.12",
    "interest": false,
  },
  {
    "imageUrl":
        "https://image-cdn.hypb.st/https%3A%2F%2Fkr.hypebeast.com%2Ffiles%2F2021%2F12%2Fikea-increase-products-price-worldwide-01.jpg?cbr=1&q=90",
    "folder": "인테리어",
    "title": "이케아",
    "url": "www.ikea.com/kr/ko/kr/ko/kr/ko/kr/ko/kr/ko",
    "createdAt": "2024.04.01",
    "interest": false,
  },
  {
    "imageUrl":
        "https://yt3.googleusercontent.com/y_esGAQOhX4rTpWvrALErAJlFbm_2TIVrvcVfcZny7TuA8dJZgOQcC6KRfd_J5hljFe-foYXj9U=s900-c-k-c0x00ffffff-no-rj",
    "folder": "해외",
    "title": "BBC",
    "url": "www.bbc.com",
    "createdAt": "2024.04.12",
    "interest": false,
  },
  {
    "imageUrl":
        "https://image-cdn.hypb.st/https%3A%2F%2Fkr.hypebeast.com%2Ffiles%2F2021%2F12%2Fikea-increase-products-price-worldwide-01.jpg?cbr=1&q=90",
    "folder": "인테리어",
    "title": "이케아",
    "url": "www.ikea.com/kr/ko/kr/ko/kr/ko/kr/ko/kr/ko",
    "createdAt": "2024.04.01",
    "interest": true,
  },
  {
    "imageUrl":
        "https://yt3.googleusercontent.com/y_esGAQOhX4rTpWvrALErAJlFbm_2TIVrvcVfcZny7TuA8dJZgOQcC6KRfd_J5hljFe-foYXj9U=s900-c-k-c0x00ffffff-no-rj",
    "folder": "해외",
    "title": "BBC",
    "url": "www.bbc.com",
    "createdAt": "2024.04.12",
    "interest": true,
  },
  {
    "imageUrl":
        "https://image-cdn.hypb.st/https%3A%2F%2Fkr.hypebeast.com%2Ffiles%2F2021%2F12%2Fikea-increase-products-price-worldwide-01.jpg?cbr=1&q=90",
    "folder": "인테리어",
    "title": "이케아",
    "url": "www.ikea.com/kr/ko/kr/ko/kr/ko/kr/ko/kr/ko",
    "createdAt": "2024.04.01",
    "interest": false,
  },
  {
    "imageUrl":
        "https://yt3.googleusercontent.com/y_esGAQOhX4rTpWvrALErAJlFbm_2TIVrvcVfcZny7TuA8dJZgOQcC6KRfd_J5hljFe-foYXj9U=s900-c-k-c0x00ffffff-no-rj",
    "folder": "해외",
    "title": "BBC",
    "url": "www.bbc.com",
    "createdAt": "2024.04.12",
    "interest": false,
  },
  {
    "imageUrl":
        "https://image-cdn.hypb.st/https%3A%2F%2Fkr.hypebeast.com%2Ffiles%2F2021%2F12%2Fikea-increase-products-price-worldwide-01.jpg?cbr=1&q=90",
    "folder": "인테리어",
    "title": "이케아",
    "url": "www.ikea.com/kr/ko/kr/ko/kr/ko/kr/ko/kr/ko",
    "createdAt": "2024.04.01",
    "interest": false,
  },
  {
    "imageUrl":
        "https://yt3.googleusercontent.com/y_esGAQOhX4rTpWvrALErAJlFbm_2TIVrvcVfcZny7TuA8dJZgOQcC6KRfd_J5hljFe-foYXj9U=s900-c-k-c0x00ffffff-no-rj",
    "folder": "해외",
    "title": "BBC",
    "url": "www.bbc.com",
    "createdAt": "2024.04.12",
    "interest": true,
  },
];

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeState();
}

class _HomeState extends State<HomeScreen> {
  final TextEditingController _saveLinkController = TextEditingController();

  late int index = 1;

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      backgroundColor: greyF2F2F2,
      child: SafeArea(
        bottom: false,
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
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                            onPressed: () {
                              navigateToSettingScreen(context);
                            },
                            icon: SvgPicture.asset('assets/svg/setting.svg'),
                            style: ButtonStyle(
                              overlayColor:
                                  MaterialStateProperty.all(Colors.transparent),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 30.0),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24.0),
                      child: Column(
                        children: [
                          SvgPicture.asset('assets/svg/wafoLogo.svg'),
                          const SizedBox(height: 32.0),
                          TextField(
                            textInputAction: TextInputAction.search,
                            controller: _saveLinkController,
                            cursorColor: primaryColor,
                            onChanged: (value) {},
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(
                                vertical: 6.0,
                                horizontal: 20.0,
                              ),
                              hintText: '저장할 링크를 넣어주세요.',
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
                                    _saveLinkController.text = '';
                                  });
                                },
                                icon: SvgPicture.asset('assets/svg/search.svg'),
                                style: ButtonStyle(
                                  overlayColor: MaterialStateProperty.all(
                                      Colors.transparent),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 40.0),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "신규 URL",
                                style: TextStyle(fontWeight: FontWeight.w700),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "$index",
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w700),
                                  ),
                                  const SizedBox(width: 4.0),
                                  const Text(
                                    "|",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: greyC9C9C9,
                                    ),
                                  ),
                                  const SizedBox(width: 4.0),
                                  Text(
                                    "${(homeData.length / 3).ceil()}",
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: greyC9C9C9,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 4.0),
                        SizedBox(
                          height: 400,
                          child: PageView.builder(
                            itemCount: (homeData.length / 3).ceil(),
                            itemBuilder: (context, index) {
                              final start = index * 3;
                              final end = (index + 1) * 3;
                              final items = homeData.sublist(
                                  start,
                                  end > homeData.length
                                      ? homeData.length
                                      : end);

                              return Container(
                                margin: const EdgeInsets.symmetric(
                                  horizontal: 20.0,
                                ),
                                child: ListView.builder(
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemCount: items.length,
                                  itemBuilder: (context, index) {
                                    final data = items[index];
                                    return Container(
                                      margin: const EdgeInsets.symmetric(
                                        vertical: 6,
                                      ),
                                      padding: const EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        color: commonWhiteColor,
                                        border:
                                            Border.all(color: commonWhiteColor),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Row(
                                        children: [
                                          Container(
                                            width: 92,
                                            height: 92,
                                            decoration: ShapeDecoration(
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              shadows: [
                                                BoxShadow(
                                                  color: commonBlackColor
                                                      .withOpacity(0.1),
                                                  blurRadius: 6,
                                                  offset: const Offset(0, 4),
                                                  spreadRadius: 0,
                                                )
                                              ],
                                              image: DecorationImage(
                                                image: NetworkImage(
                                                    data['imageUrl']!),
                                                onError:
                                                    (exception, stackTrace) =>
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
                                                      data['folder']!,
                                                      style: const TextStyle(
                                                        color: grey989898,
                                                        fontSize: 14.0,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        letterSpacing: -0.5,
                                                      ),
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                    ),
                                                  ],
                                                ),
                                                const SizedBox(height: 10.0),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      data['title']!,
                                                      style: const TextStyle(
                                                        fontSize: 16.0,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        letterSpacing: -0.5,
                                                      ),
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                    ),
                                                    Text(
                                                      data['url']!,
                                                      style: const TextStyle(
                                                        color: greyA1A1A1,
                                                        fontSize: 14.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        letterSpacing: -0.5,
                                                      ),
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                    ),
                                                  ],
                                                ),
                                                const SizedBox(height: 10.0),
                                                Text(
                                                  data['createdAt']!,
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
                                              data['interest']
                                                  ? primaryColor
                                                  : greyC9C9C9,
                                              BlendMode.srcIn,
                                            ),
                                          )
                                        ],
                                      ),
                                    );
                                  },
                                ),
                              );
                            },
                            onPageChanged: (newIndex) {
                              setState(() {
                                index = newIndex + 1;
                              });
                            },
                          ),
                        ),
                      ],
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
}
