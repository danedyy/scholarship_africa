import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:scholarship_africa/pages/explore.dart';
import 'package:scholarship_africa/pages/widget/nav_bar.dart';
import 'package:scholarship_africa/pages/widget/title_header.dart';
import 'package:scholarship_africa/util/constants.dart';

class IndexPage extends StatefulWidget {
  const IndexPage({Key? key}) : super(key: key);

  @override
  State<IndexPage> createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  int _currentTab = 0;

  final List<Widget> _screens = [
    const ExplorePage(),
    Container(
      color: Colors.brown,
    ),
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.green,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        bottom: PreferredSize(
          child: Container(
            width: double.infinity,
            height: 120,
            color: Theme.of(context).scaffoldBackgroundColor,
            child: Container(
              margin: const EdgeInsets.only(top: 20),
              child: Stack(
                children: [
                  Positioned(
                    right: 10,
                    child: SvgPicture.asset('assets/img/notifi.svg'),
                  ),
                  Positioned(
                    left: -50,
                    // top: -5,
                    child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.indigo.shade50,
                        ),
                        alignment: const Alignment(0.6, 0),
                        child: const Icon(
                          Icons.menu,
                          size: 30,
                        )),
                  ),
                  if (_currentTab == 0)
                    const Positioned(
                        bottom: 0,
                        right: 0,
                        left: 0,
                        child: Padding(
                          padding: EdgeInsets.only(left: 45, right: 15),
                          child: TitleHeader(),
                        ))
                ],
              ),
            ),
          ),
          preferredSize: const Size(0, 120),
        ),
      ),
      body: _screens[_currentTab],
      bottomNavigationBar: Material(
        child: Container(
          height: 80,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // mainAxisSize: MainAxisSize.max,
              children: [
                InkResponse(
                  onTap: () {
                    setState(() {
                      _currentTab = 0;
                    });
                  },
                  child: NavbarItem(
                    currentTab: _currentTab,
                    label: 'Explore',
                    index: 0,
                    icon: SvgPicture.asset(
                      "assets/img/explore.svg",
                      color: 0 == _currentTab ? primaryColor : null,
                    ),
                  ),
                ),
                InkResponse(
                  onTap: () {
                    setState(() {
                      _currentTab = 1;
                    });
                  },
                  child: NavbarItem(
                    currentTab: _currentTab,
                    label: 'Applications',
                    index: 1,
                    icon: SvgPicture.asset(
                      "assets/img/scholarships.svg",
                      color: 1 == _currentTab ? primaryColor : null,
                      // size: 30,
                    ),
                  ),
                ),
                InkResponse(
                  onTap: () {
                    setState(() {
                      _currentTab = 2;
                    });
                  },
                  child: NavbarItem(
                    currentTab: _currentTab,
                    label: 'Bookmarks',
                    index: 2,
                    icon: SvgPicture.asset(
                      "assets/img/love.svg",
                      color: 2 == _currentTab ? primaryColor : null,
                    ),
                  ),
                ),
                InkResponse(
                  onTap: () {
                    setState(() {
                      _currentTab = 3;
                    });
                  },
                  child: NavbarItem(
                    currentTab: _currentTab,
                    label: 'Profile',
                    index: 3,
                    icon: SvgPicture.asset(
                      "assets/img/profile.svg",
                      color: 3 == _currentTab ? primaryColor : null,
                    ),
                  ),
                ),
              ],
            ),
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade400,
                blurRadius: 20.0,
                spreadRadius: 1.0,
                offset:
                    const Offset(5.0, 6.0), // shadow direction: bottom right
              )
            ],
            borderRadius: const BorderRadius.all(
              Radius.circular(25),
            ),
          ),
          margin:
              const EdgeInsets.only(left: 25, right: 25, bottom: 30, top: 10),
        ),
      ),
    );
  }
}
