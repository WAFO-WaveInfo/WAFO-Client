import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wafo/res/constants/color.dart';
import 'package:wafo/ui/common/layout/default_layout.dart';
import 'package:wafo/ui/folder/folder_screen.dart';
import 'package:wafo/ui/home/home_screen.dart';
import 'package:wafo/ui/profile/profile_screen.dart';
import 'package:wafo/ui/shorts/shorts_screen.dart';

const bottomNavigationBarItemList = [
  {
    'label': '홈',
    'iconPath': 'assets/svg/home.svg',
  },
  {
    'label': '폴더',
    'iconPath': 'assets/svg/folderBig.svg',
  },
  {
    'label': '숏츠',
    'iconPath': 'assets/svg/shorts.svg',
  },
  {
    'label': '프로필',
    'iconPath': 'assets/svg/profile.svg',
  },
];

class RootTab extends StatefulWidget {
  final int? tapIndex;

  const RootTab({this.tapIndex, super.key});

  @override
  State<RootTab> createState() => _RootTabState();
}

class _RootTabState extends State<RootTab> with SingleTickerProviderStateMixin {
  late TabController tabController;

  int _index = 0;

  @override
  void initState() {
    super.initState();

    tabController = TabController(
      length: 4,
      vsync: this,
      animationDuration: Duration.zero,
    );

    if (widget.tapIndex != null) {
      _index = widget.tapIndex!;
      tabController.index = widget.tapIndex!;
    }

    tabController.addListener(_tabListener);
  }

  void _tabListener() {
    setState(() {
      _index = tabController.index;
    });
  }

  @override
  void dispose() {
    tabController.removeListener(_tabListener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(
              color: greyF1F2F5,
              width: 1.0,
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 4.0),
          child: BottomNavigationBar(
            elevation: 0,
            backgroundColor: commonWhiteColor,
            selectedItemColor: primaryColor,
            unselectedItemColor: greyACACAC,
            selectedFontSize: 12,
            selectedLabelStyle: const TextStyle(
              fontWeight: FontWeight.w500,
            ),
            unselectedFontSize: 12,
            type: BottomNavigationBarType.fixed,
            onTap: (int index) {
              tabController.animateTo(index);
            },
            currentIndex: _index,
            items: bottomNavigationBarItemList
                .map(
                  (e) => BottomNavigationBarItem(
                    label: e['label'],
                    icon: Column(
                      children: [
                        SvgPicture.asset(
                          e['iconPath']!,
                          colorFilter: const ColorFilter.mode(
                            greyACACAC,
                            BlendMode.srcIn,
                          ),
                        ),
                        const SizedBox(height: 6.0),
                      ],
                    ),
                    activeIcon: Column(
                      children: [
                        SvgPicture.asset(
                          e['iconPath']!,
                          colorFilter: const ColorFilter.mode(
                            primaryColor,
                            BlendMode.srcIn,
                          ),
                        ),
                        const SizedBox(height: 6.0),
                      ],
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ),
      child: TabBarView(
        physics: const NeverScrollableScrollPhysics(),
        controller: tabController,
        children: const [
          HomeScreen(),
          FolderScreen(),
          ShortsScreen(),
          ProfileScreen(),
        ],
      ),
    );
  }
}
