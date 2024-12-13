import 'package:flutter/material.dart';

class CustomDropdownMenu extends StatelessWidget {
  final String title;
  final List<String> items;

  const CustomDropdownMenu({
    super.key,
    required this.title,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title),
        const SizedBox(width: 15),
        Expanded(
          child: DropdownButtonFormField(
            isExpanded: true,
            dropdownColor: Colors.white,
            value: items.first,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            items: items.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (String? value) {
              print(value);
            },
          ),
        ),
      ],
    );
  }
}
