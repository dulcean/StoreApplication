import 'package:flutter/material.dart';
import 'package:flutter_store_application/common/color_extension.dart';
import 'package:flutter_store_application/common_widgets/tab_button.dart';
import 'package:flutter_store_application/view/home/home_view.dart';

class MainTabView extends StatefulWidget {
  const MainTabView({super.key});

  @override
  State<MainTabView> createState() => _MainTabViewState();
}

class _MainTabViewState extends State<MainTabView> {
  int selectTab = 0;
  PageStorageBucket storageBucket = PageStorageBucket();
  Widget selectPageView = const HomeView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(bucket: storageBucket, child: selectPageView,),
      backgroundColor: const Color(0xfff5f5f5),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      bottomNavigationBar: BottomAppBar(
        surfaceTintColor: TColor.white,
        shadowColor: Colors.black,
        elevation: 1,
        notchMargin: 12,
        height: 100,
        shape: const CircularNotchedRectangle(),
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TabButton(  
                  title: "Explore",
                  icon: "assets/img/explore_logo.png",
                  onTap: () {
                    if (selectTab != 0) {
                      selectTab = 0;
                      selectPageView = const HomeView();
                    }
                    if (mounted) {
                      setState(() {});
                    }
                  },
                  isSelected: selectTab == 0),
              TabButton(
                  title: "Saved",
                  icon: "assets/img/heart_logo.png",
                  onTap: () {
                    if (selectTab != 1) {
                      selectTab = 1;
                    }
                    if (mounted) {
                      setState(() {});
                    }
                  },
                  isSelected: selectTab == 1),
              TabButton(
                  title: "Notifications",
                  icon: "assets/img/bell_logo.png",
                  onTap: () {
                    if (selectTab != 2) {
                      selectTab = 2;
                    }
                    if (mounted) {
                      setState(() {});
                    }
                  },
                  isSelected: selectTab == 2),
              TabButton(
                  title: "Profile",
                  icon: "assets/img/user_logo.png",
                  onTap: () {
                    if (selectTab != 3) {
                      selectTab = 3;
                    }
                    if (mounted) {
                      setState(() {});
                    }
                  },
                  isSelected: selectTab == 3),
            ],
          ),
        ),
      ),
    );
  }
}
