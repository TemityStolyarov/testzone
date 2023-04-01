import 'package:flutter/material.dart';
import 'package:testzone/features/home/widgets/test_card_stats.dart';
import 'package:testzone/features/settings/color_schemes.dart';
import 'package:testzone/features/settings/constants.dart';

class TestCard extends StatelessWidget {
  const TestCard({
    super.key,
    required this.title,
    required this.description,
    required this.authorUsername,
    required this.rating,
    required this.timesPassed,
    required this.publishTime,
    required this.onTap,
  });

  final String title;
  final String description;
  final DateTime publishTime;

  final String authorUsername;
  final double rating;
  final double timesPassed;

  final VoidCallback onTap;

  // '11 мая 2023, в 11:02'
  String getDatePost() {
    return '${publishTime.day} ${publishTime.month} ${publishTime.year},'
        ' в ${publishTime.hour}:${publishTime.minute}';
  }

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: AppColorScheme.feedTestCardColor,
        borderRadius: BorderRadius.all(
          Radius.circular(TestZoneConst.cardBorderRadius),
        ),
      ),
      child: InkWell(
        borderRadius: const BorderRadius.all(
          Radius.circular(TestZoneConst.cardBorderRadius),
        ),
        splashColor: AppColorScheme.feedSplashColor,
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: TestZoneConst.titleFontSize,
                ),
              ),
              SizedBox(height: 2),
              Text(
                getDatePost(),
                style: TextStyle(
                  fontSize: TestZoneConst.smallFontSize,
                ),
              ),
              SizedBox(height: 4),
              Text(description),
              SizedBox(height: 12),
              TestCardStats(
                authorUsername: authorUsername,
                rating: rating,
                timesPassed: timesPassed,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
