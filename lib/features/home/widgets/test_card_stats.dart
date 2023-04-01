import 'package:flutter/material.dart';
import 'package:testzone/features/settings/constants.dart';

class TestCardStats extends StatelessWidget {
  const TestCardStats({
    required this.rating,
    required this.timesPassed,
    required this.authorUsername,
    super.key,
  });

  final double rating;
  final double timesPassed;
  final String authorUsername;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          rating.toString(),
          style: TextStyle(
            fontSize: TestZoneConst.titleFontSize,
          ),
        ),
        Icon(
          Icons.star_border_outlined,
          size: 16,
        ),
        SizedBox(width: 8),
        Text(
          '${timesPassed}k',
          style: TextStyle(
            fontSize: TestZoneConst.titleFontSize,
          ),
        ),
        Icon(
          Icons.check,
          size: 16,
        ),
        Spacer(),
        Text(
          '@$authorUsername',
          style: TextStyle(
            fontSize: TestZoneConst.smallFontSize,
          ),
        ),
      ],
    );
  }
}
