

import 'package:material_ui/material_ui.dart';

class ContainerBody extends StatelessWidget {
  const ContainerBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Icon(Icons.settings),
          title: Text('Settings'),
          trailing: Icon(Icons.navigate_next),
        ),
        ListTile(
          leading: Icon(Icons.paste),
          title: Text('My Orders'),
          trailing: Icon(Icons.navigate_next),
        ),
        ListTile(
          leading: Icon(Icons.add_location),
          title: Text('Address'),
          trailing: Icon(Icons.navigate_next),
        ),
        ListTile(
          leading: Icon(Icons.key),
          title: Text('Change Password'),
          trailing: Icon(Icons.navigate_next),
        ),
      ],
    );
  }
}
