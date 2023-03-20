import 'package:flutter/material.dart';

import '../../settings/constants.dart';

class TestCardStats extends StatelessWidget {
  const TestCardStats({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Text(
          style: TextStyle(fontSize: TestZoneConst.titleFontSize),
          '4.8',
        ),
        Icon(
          Icons.star_border_outlined,
          size: 16,
        ),
        SizedBox(
          width: 8,
        ),
        Text(
          style: TextStyle(fontSize: TestZoneConst.titleFontSize),
          '3.6k',
        ),
        Icon(
          Icons.check,
          size: 16,
        ),
        Spacer(),
        Text(
          style: TextStyle(fontSize: TestZoneConst.smallFontSize),
          '@username',
        ),
      ],
    );
  }
}
