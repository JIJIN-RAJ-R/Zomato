
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class CountryCodePicker extends StatelessWidget {
  const CountryCodePicker({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: const BoxDecoration(),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: IntlPhoneField(
                  decoration: InputDecoration(
                    labelText: 'Phone Number',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(),
                    ),
                  ),
                ),
              ),
            )));
  }
}
