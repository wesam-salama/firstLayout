import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:layouts/screens/favorites/view/screens/favorites_screen.dart';
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

  // List<Widget> bodyScreens = <Widget>[
  //   HomeScreen(),
  //   FavoritesScreen(),
  //   TrackScreen(),
  //   ProfileScreen(),
  // ];

  _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    print('$_selectedIndex');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      // bodyScreens.elementAt(_selectedIndex),
      Builder(builder: (BuildContext context) {
        return _selectedIndex == 0
            ? const HomeScreen()
            : _selectedIndex == 1
            ? const FavoritesScreen()
            : _selectedIndex == 2
            ? const TrackScreen()
            : const ProfileScreen();
      },),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: const Color(0xff23AA49),
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/images/home.svg',
              colorFilter: ColorFilter.mode(
                  _selectedIndex == 0 ? const Color(0xff23AA49) : const Color(0xff818181),
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
                            ? const Color(0xff23AA49)
                            : const Color(0xff818181),
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
                            ? const Color(0xff23AA49)
                            : const Color(0xff818181),
                        BlendMode.srcIn),
                  ),
                ],
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/images/profile.svg',
                colorFilter: ColorFilter.mode(
                    _selectedIndex == 3 ? const Color(0xff23AA49) : const Color(0xff818181),
                    BlendMode.srcIn),
              ),
              label: ''),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff23AA49),
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