import 'package:flutter/material.dart';

class CustomRadioList extends StatelessWidget {
  CustomRadioList({
    required this.title,
    required this.icon,
  });
  final title;
  final icon;
  @override
  Widget build(BuildContext context) {
    return RadioListTile(
      toggleable: true,
      controlAffinity: ListTileControlAffinity.trailing,
      value: '',
      groupValue: title,
      title: Row(children: [
        Icon(icon),
        SizedBox(
          width: 15,
        ),
        Text(title!)
      ]),
      onChanged: (value) {
        // setState(() {
        //     gender = value.toString();
        // });
      },
    );
  }
}
