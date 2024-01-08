// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';

class ConditionSelectionWidget extends StatefulWidget {
  const ConditionSelectionWidget({super.key});

  @override
  _ConditionSelectionWidgetState createState() =>
      _ConditionSelectionWidgetState();
}

class _ConditionSelectionWidgetState extends State<ConditionSelectionWidget> {
  List<String> selectedConditions = ['Yoga'];

  final List<MultiSelectItem<String>> items = [
    MultiSelectItem('Yoga', 'Yoga'),
    MultiSelectItem('Digestions', 'Digestions'),
    MultiSelectItem('Allergies', 'Allergies'),
    MultiSelectItem('Thyroid', 'Thyroid'),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MultiSelectDialogField(
          items: items,
          title: const Text('Conditions'),
          selectedColor: Colors.green,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(40)),
            border: Border.all(),
          ),
          buttonIcon: const Icon(
            Icons.add,
            color: Colors.black,
          ),
          buttonText: const Text(
            'Conditions',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
          onConfirm: (results) {
            selectedConditions = results;
          },
        ),
      ],
    );
  }
}
