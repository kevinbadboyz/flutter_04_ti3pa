
import 'package:material_ui/material_ui.dart';

class ContainerFooter extends StatelessWidget {
  const ContainerFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Icon(Icons.help_outline_rounded),
          title: Text('Help & Support'),
          trailing: Icon(Icons.navigate_next_outlined),
        ),
        ListTile(
          leading: Icon(Icons.logout),
          title: Text('Logout'),
          trailing: Icon(Icons.navigate_next_outlined),
        ),
      ],
    );
  }
}
