import 'package:flutter/material.dart';

class GroupView extends StatelessWidget {
  const GroupView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, 'about_group_car');
            },
            child: ListTile(
              title: Text('Group 1'),
              subtitle: Text('Description 1'),
              leading: Icon(Icons.group),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
          const ListTile(
            title: Text('Group 2'),
            subtitle: Text('Description 2'),
            leading: Icon(Icons.group),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          const ListTile(
            title: Text('Group 3'),
            subtitle: Text('Description 3'),
            leading: Icon(Icons.group),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
        ],
      ),
    );
  }
}
