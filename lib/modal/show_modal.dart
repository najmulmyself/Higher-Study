// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:higher_study/component/custom_radio_list.dart';
import 'package:higher_study/screens/dummy_screen.dart';

Future<dynamic> showModal(BuildContext context) {
  return showModalBottomSheet(
    context: context,
    useRootNavigator: true,
    builder: (context) {
      return SizedBox(
        // minHeight: 200,
        // height: 200,
        // color: Colors.amber,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Sort By'),
                  Icon(
                    Icons.close,
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                color: Colors.grey.shade400,
                thickness: 1,
              ),
              CustomRadioList(
                title: 'Bachelor of Technology',
                icon: Icons.integration_instructions_outlined,
              ),
              CustomRadioList(
                title: 'Bachelor of Architecture',
                icon: Icons.architecture,
              ),
              CustomRadioList(
                title: 'Pharmacy',
                icon: Icons.medical_services_outlined,
              ),
              CustomRadioList(title: 'Law', icon: Icons.balance),
              CustomRadioList(
                  title: 'Management',
                  icon: Icons.account_balance_wallet_rounded),
            ],
          ),
        ),
      );
    },
  );
}
// }
