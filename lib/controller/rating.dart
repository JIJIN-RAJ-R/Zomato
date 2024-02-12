import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// ignore: camel_case_types
class ratingstar extends StatelessWidget {
  const ratingstar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Card(
      color: Colors.green,
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          children: [
            Text(
              '4.3',
              style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                  fontWeight: FontWeight.w700),
            ),
            FaIcon(
              FontAwesomeIcons.solidStar,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
