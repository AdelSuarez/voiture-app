import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ItemDocument extends StatelessWidget {
  final String title;
  final String documentIcon;
  final String date;

  const ItemDocument({
    super.key,
    required this.title,
    required this.documentIcon,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('Download');
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 5),
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: Colors.grey,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
          //  borderRadius:                      )
        ),
        child: ListTile(
          leading: SvgPicture.asset(
            'assets/$documentIcon.svg',
            width: 30,
          ),
          title: Text(title),
          subtitle: Text(date),
          trailing: IconButton(
            icon: const Icon(Icons.delete),
            color: Colors.grey,
            onPressed: () {
              print('Document delete ');
            },
          ),
        ),
      ),
    );
  }
}
