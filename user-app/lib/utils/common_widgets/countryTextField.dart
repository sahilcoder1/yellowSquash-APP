import 'package:flutter/material.dart';


class CountryTextField extends StatefulWidget {
  const CountryTextField({super.key});

  @override
  _CountryTextFieldState createState() => _CountryTextFieldState();
}

class _CountryTextFieldState extends State<CountryTextField> {
  String selectedCountry = ''; // Selected country will be stored here

  List<Map<String, String>> countries = [
    {'name': 'United States', 'code': 'US'},
    {'name': 'Canada', 'code': 'CA'},
    {'name': 'United Kingdom', 'code': 'UK'},
    // Add more countries here
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: GestureDetector(
              onTap: _showCountryPicker,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  children: [
                    const Icon(Icons.flag),
                    const SizedBox(width: 8),
                    Text(
                      selectedCountry.isEmpty
                          ? 'Select a country'
                          : selectedCountry,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _showCountryPicker() {
    // ignore: inference_failure_on_function_invocation
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Select a Country'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              for (var country in countries)
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedCountry = country['name']!;
                    });
                    Navigator.pop(context); // Close the dialog
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Text(country['name']!),
                  ),
                ),
            ],
          ),
        );
      },
    );
  }
}
