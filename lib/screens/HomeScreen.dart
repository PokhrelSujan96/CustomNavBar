import 'package:custom_navbar/utils/CustomNavBar.dart';
import 'package:custom_navbar/utils/CustomToolTip.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static List<Widget> _screens = <Widget>[
    Image.asset("assets/home.png"),
    Image.asset("assets/bell.png"),
    Image.asset("assets/bookmark.png"),
    Image.asset("assets/user.png"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: (_selectedIndex == 0)
            ? FloatingActionButton.extended(
                backgroundColor: Colors.white,
                elevation: 5.r,
                onPressed: () {},
                icon: Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.h),
                  child: CustomToolTip(
                    text: "CREATE A POST",
                    location: false,
                    child: SizedBox(
                      height: 40.h,
                      width: 40.w,
                      child: Center(
                        child: Padding(
                          padding: EdgeInsets.all(8.r),
                          child: Image.asset("assets/design.png"),
                        ),
                      ),
                    ),
                  ),
                ),
                label: Text(
                  "CREATE",
                  style: GoogleFonts.electrolize(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ),
              )
            : FloatingActionButton(
                backgroundColor: Colors.white,
                onPressed: () {},
                child: CustomToolTip(
                  location: false,
                  text: "CREATE POST",
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.all(8.r),
                      child: Image.asset(
                        "assets/design.png",
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
        bottomNavigationBar: Theme(
          data: ThemeData(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent),
          child: BottomNavigationBar(
              backgroundColor: Colors.white,
              onTap: _onItemTapped,
              elevation: 0.0,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              currentIndex: _selectedIndex,
              type: BottomNavigationBarType.fixed,
              items: [
                BottomNavigationBarItem(
                    icon: NavBarIconCustom(
                        tip: "HOME",
                        image: "assets/home.png",
                        myindex: _selectedIndex,
                        number: 0),
                    label: "Home"),
                BottomNavigationBarItem(
                    icon: NavBarIconCustom(
                        tip: "NOTIFICATIONS",
                        image: "assets/bell.png",
                        myindex: _selectedIndex,
                        number: 1),
                    label: "Notification"),
                BottomNavigationBarItem(
                    icon: NavBarIconCustom(
                        tip: "BOOKMARKS",
                        image: "assets/bookmark.png",
                        myindex: _selectedIndex,
                        number: 2),
                    label: "Bookmark"),
                BottomNavigationBarItem(
                    icon: NavBarIconCustom(
                        tip: "PROFILE",
                        image: "assets/user.png",
                        myindex: _selectedIndex,
                        number: 3),
                    label: "Profile")
              ]),
        ),
        body: Center(
          child: SizedBox(
            height: 60.h,
            width: 60.w,
            child: Center(child: _screens.elementAt(_selectedIndex)),
          ),
        ));
  }
}
