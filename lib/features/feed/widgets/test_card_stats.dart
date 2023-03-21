import 'package:flutter/material.dart';
import '../../settings/constants.dart';

class TestCardStats extends StatelessWidget {
  TestCardStats({
    testRating,
    testTimesPassed,
    testAuthorUsername,
    super.key,
  });

  double testRating = 4.8; // TODO: clear default value
  double testTimesPassed = 3.6; // TODO: clear default value
  final String testAuthorUsername = 'username'; // TODO: clear default value

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          style: TextStyle(fontSize: TestZoneConst.titleFontSize),
          testRating.toString(),
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
          '${testTimesPassed}k',
        ),
        Icon(
          Icons.check,
          size: 16,
        ),
        Spacer(),
        Text(
          style: TextStyle(fontSize: TestZoneConst.smallFontSize),
          '@$testAuthorUsername',
        ),
      ],
    );
  }
}
