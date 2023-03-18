import 'package:flutter/material.dart';

class TestCardStats extends StatelessWidget {
  const TestCardStats({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Text(
          '4.8',
          textScaleFactor: 1.1,
        ),
        Icon(
          Icons.star_border_outlined,
          size: 16,
        ),
        SizedBox(
          width: 8,
        ),
        Text(
          '3.6k',
          textScaleFactor: 1.1,
        ),
        Icon(
          Icons.check,
          size: 16,
        ),
        Spacer(),
        Text(
          '@username',
          textScaleFactor: 0.8,
        ),
      ],
    );
  }
}
