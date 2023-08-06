import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:layouts/screens/buttom_navigation_bar_screens/favorites_screen.dart';
import 'package:layouts/screens/buttom_navigation_bar_screens/home_screen.dart';
import 'package:layouts/screens/buttom_navigation_bar_screens/profile_screen.dart';
import 'package:layouts/screens/buttom_navigation_bar_screens/track_screen.dart';


class ButtomNavigationScreen extends StatefulWidget {
  ButtomNavigationScreen({super.key});

  @override
  State<ButtomNavigationScreen> createState() => _ButtomNavigationScreenState();
}

class _ButtomNavigationScreenState extends State<ButtomNavigationScreen> {
  int _selectedIndex = 0;

  List<Widget> bodyScreens = <Widget>[
    HomeScreen(),
    FavoritesScreen(),
    TrackScreen(),
    ProfileScreen(),
  ];

  _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    print('$_selectedIndex');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bodyScreens.elementAt(_selectedIndex),
      // _selectedIndex == 0
      //     ? HomeScreen()
      //     : _selectedIndex == 1
      //         ? FavoritesScreen()
      //         : _selectedIndex == 2
      //             ? TrackScreen()
      //             : ProfileScreen(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Color(0xff23AA49),
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/images/home.svg',
              colorFilter: ColorFilter.mode(
                  _selectedIndex == 0 ? Color(0xff23AA49) : Color(0xff818181),
                  BlendMode.srcIn),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
              icon: Row(
                children: [
                  SvgPicture.asset(
                    'assets/images/heart.svg',
                    colorFilter: ColorFilter.mode(
                        _selectedIndex == 1
                            ? Color(0xff23AA49)
                            : Color(0xff818181),
                        BlendMode.srcIn),
                  ),
                ],
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SvgPicture.asset(
                    'assets/images/location.svg',
                    colorFilter: ColorFilter.mode(
                        _selectedIndex == 2
                            ? Color(0xff23AA49)
                            : Color(0xff818181),
                        BlendMode.srcIn),
                  ),
                ],
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/images/profile.svg',
                colorFilter: ColorFilter.mode(
                    _selectedIndex == 3 ? Color(0xff23AA49) : Color(0xff818181),
                    BlendMode.srcIn),
              ),
              label: ''),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff23AA49),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        onPressed: () {},
        child: SvgPicture.asset(
          'assets/images/shopping-basket.svg',
          fit: BoxFit.scaleDown,
        ),
      ),
      floatingActionButtonLocation:
      FloatingActionButtonLocation.miniCenterDocked,
    );
  }
}