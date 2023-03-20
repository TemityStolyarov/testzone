import 'package:flutter/material.dart';
import 'package:testzone/features/feed/widgets/test_card_stats.dart';
import 'package:testzone/features/settings/color_schemes.dart';

import '../../settings/constants.dart';

class TestCard extends StatelessWidget {
  const TestCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColorScheme.feedTestCardColor,
      shape: const RoundedRectangleBorder(
        borderRadius:
            BorderRadius.all(Radius.circular(TestZoneConst.cardBorderRadius)),
      ),
      child: InkWell(
        borderRadius: const BorderRadius.all(
            Radius.circular(TestZoneConst.cardBorderRadius)),
        splashColor: AppColorScheme.feedSplashColor,
        onTap: () => debugPrint('Card tapped.'), //TODO: action
        child: SizedBox(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Каким животным ты бы хотел быть?',
                  style: TextStyle(fontSize: TestZoneConst.titleFontSize),
                  // textScaleFactor: 1.1,
                ),
                SizedBox(height: 2),
                Text(
                  '11 мая 2023, в 11:02',
                  style: TextStyle(fontSize: TestZoneConst.smallFontSize),
                ),
                SizedBox(height: 4),
                Text(
                  'Продолжая тему обсуждения, связанную с предшественниками человека, каждое живое существо хотя бы однажды хотело бы относиться к другому виду. А к кому относите себя вы?', //
                  //'
                ),
                SizedBox(height: 12),
                TestCardStats(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
