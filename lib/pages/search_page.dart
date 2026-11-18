import 'package:flutter_04_ti3pa/widget/custom_bottom_navigation.dart';
import 'package:material_ui/material_ui.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Search'), centerTitle: true),
      bottomNavigationBar: CustomBottomNavigation(selectedIndex: 2),
    );
  }
}
