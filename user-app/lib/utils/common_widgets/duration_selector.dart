import 'package:flutter/material.dart';

class PlanSelectionPage extends StatefulWidget {
  const PlanSelectionPage({super.key});

  @override
  _PlanSelectionPageState createState() => _PlanSelectionPageState();
}

class _PlanSelectionPageState extends State<PlanSelectionPage> {
  String? selectedPlan;
  String? selectedDuration;
  List<String> planOptions = ['Education Plan', 'Treatment Plan'];
  List<String> durationOptions = [];

  Map<String, List<String>> durationOptionsMap = {
    'Education Plan': ['Individual'],
    'Treatment Plan': ['1 member Plan', '2 members Plan', '3 members Plan'],
  };

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        DropdownButton<String>(
          value: selectedPlan,
          hint: const Text('Select Plan'),
          onChanged: (value) {
            setState(() {
              selectedPlan = value;
              selectedDuration =
                  null; // Reset selected duration when plan changes
              durationOptions = durationOptionsMap[selectedPlan]!;
            });
          },
          items: planOptions.map((String option) {
            return DropdownMenuItem<String>(
              value: option,
              child: Text(option),
            );
          }).toList(),
        ),
        const SizedBox(height: 20),
        DropdownButton<String>(
          value: selectedDuration,
          hint: const Text('Duration'),
          onChanged: (value) {
            setState(() {
              selectedDuration = value;
            });
          },
          items: durationOptions.map((String option) {
            return DropdownMenuItem<String>(
              value: option,
              child: Text(option),
            );
          }).toList(),
        ),
      ],
    );
  }
}
