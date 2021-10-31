import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/components/colors.dart';
import 'package:instagram/components/icons.dart';
import 'package:instagram/screens/accont_page.dart';
import 'package:instagram/screens/add_page.dart';
import 'package:instagram/screens/favorite_page.dart';
import 'package:instagram/screens/home_page.dart';
import 'package:instagram/screens/search_page.dart';

class InstagramBottomNavBar extends StatefulWidget {
  const InstagramBottomNavBar({Key? key}) : super(key: key);

  @override
  _InstagramBottomNavBarState createState() => _InstagramBottomNavBarState();
}

class _InstagramBottomNavBarState extends State<InstagramBottomNavBar> {
  int _instagramIndexOfIcon = 0;

  List<Widget> _listOfPages = [];
  Widget? homePage, searchPage, addPage, favoritePage, accontPage;

  @override
  void initState() {
    homePage = const HomePage();
    searchPage = const SearchPage();
    addPage = const AddPage();
    favoritePage = const FavoritePage();
    accontPage = const AccontPage();
    _listOfPages = [
      homePage!,
      searchPage!,
      addPage!,
      favoritePage!,
      accontPage!
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _listOfPages[_instagramIndexOfIcon],
      bottomNavigationBar: _bottonNarBar(),
    );
  }

  Widget _bottonNarBar() {
    return BottomNavigationBar(
      items:  [
        BottomNavigationBarItem(
          icon: _instagramIndexOfIcon == 0 ? home1 : home2,
          label: "",
          
        ),
        BottomNavigationBarItem(
          icon: _instagramIndexOfIcon == 1 ? search1 : search2,
          label: "",
        ),
        BottomNavigationBarItem(
          icon: _instagramIndexOfIcon == 2 ? add1 : add2,
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Badge(
          badgeColor: Colors.red,
          position: const BadgePosition(bottom: 15,start: 12),
          badgeContent: const Text(
            '10',
            style: TextStyle(color: Colors.white),
          ),
          child: _instagramIndexOfIcon == 3 ? like1 : like2,
        ),
         label: "",
      ),
         
        
        BottomNavigationBarItem(
            icon:  _instagramIndexOfIcon == 4 ? accont1 : accont2,
            label: ""),
      ],
      type: BottomNavigationBarType.fixed,
      elevation: 20,
      currentIndex: _instagramIndexOfIcon,
      selectedItemColor: iconColor,
      onTap: (i) {
        setState(() {
          _instagramIndexOfIcon = i;
        });
      },
    );
  }
}
