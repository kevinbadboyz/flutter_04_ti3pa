import 'package:flutter_04_ti3pa/widget/container_body.dart';
import 'package:flutter_04_ti3pa/widget/container_footer.dart';
import 'package:flutter_04_ti3pa/widget/container_header.dart';
import 'package:flutter_04_ti3pa/widget/custom_bottom_navigation.dart';
import 'package:material_ui/material_ui.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile'), centerTitle: true),
      bottomNavigationBar: CustomBottomNavigation(selectedIndex: 4),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: ListView(
          children: [
            Column(
              children: [
                ContainerHeader(),
                Divider(height: 10, thickness: 2),
                ContainerBody(),
                Divider(height: 10, thickness: 2),
                ContainerFooter(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
