import 'package:flutter_04_ti3pa/pages/account_page.dart';
import 'package:flutter_04_ti3pa/pages/favourite_page.dart';
import 'package:flutter_04_ti3pa/pages/home_page.dart';
import 'package:flutter_04_ti3pa/pages/report_page.dart';
import 'package:flutter_04_ti3pa/pages/search_page.dart';
import 'package:material_ui/material_ui.dart';

class CustomBottomNavigation extends StatelessWidget {
  int selectedIndex;

  CustomBottomNavigation({super.key, required this.selectedIndex});

  void onItemTapped(BuildContext context, int index) {
    if (index == selectedIndex) return;

    Navigator.pushReplacement(
      context,
      PageRouteBuilder(
        pageBuilder: (_, __, ___) => switch (index) {
          0 => HomePage(),
          1 => FavouritePage(),
          2 => SearchPage(),
          3 => ReportPage(),
          _ => AccountPage(),
        },
        transitionDuration: Duration(milliseconds: 250),
        transitionsBuilder: (_, animation, __, child) {
          return FadeTransition(opacity: animation, child: child);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(left: 16, right: 16, top: 5, bottom: 5),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: BottomNavigationBar(
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white70,
            type: BottomNavigationBarType.fixed,
            iconSize: 28,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border),
                label: 'Favourite',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Search',
              ),
              BottomNavigationBarItem(icon: Icon(Icons.paste), label: 'Report'),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Account',
              ),
            ],
            currentIndex: selectedIndex,
            onTap: (index) => onItemTapped(context, index),
            showSelectedLabels: false,
            showUnselectedLabels: false,
            backgroundColor: Theme.of(context).colorScheme.primary,
          ),
        ),
      ),
    );
  }
}
