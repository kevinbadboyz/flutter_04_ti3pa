import 'package:material_ui/material_ui.dart';

class ContainerHeader extends StatelessWidget {
  const ContainerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 75,
          backgroundImage: NetworkImage(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOD0yxm9s2jP_2zPJEM7pAqWPz_jB6pbMt2ywpLDFmkQ&s=10',
          ),
        ),
        SizedBox(height: 10,),
        Text(
          'Kevin Pasaribu',
          style: Theme.of(context).textTheme.bodyLarge
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
        Text('kevinbadboyz@gmail.com'),
        SizedBox(height: 10),
        FilledButton(onPressed: () {}, child: Text('Edit Profile')),
        SizedBox(height: 10),
      ],
    );
  }
}
