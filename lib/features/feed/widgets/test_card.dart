import 'package:flutter/material.dart';
import 'package:testzone/features/feed/widgets/test_card_stats.dart';
import 'package:testzone/features/settings/color_schemes.dart';

class TestCard extends StatelessWidget {
  const TestCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColorScheme.feedTestCardColor,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(6)),
      ),
      child: InkWell(
        borderRadius: const BorderRadius.all(Radius.circular(6)),
        splashColor: AppColorScheme.feedSplashColor,
        onTap: () => debugPrint('Card tapped.'), //TODO: action
        child: SizedBox(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  textScaleFactor: 1.1,
                  'Каким животным ты бы хотел быть?',
                  //'
                ),
                SizedBox(height: 2),
                Text(
                  '11 мая 2023, в 11:02',
                  textScaleFactor: 0.8,
                ),
                SizedBox(height: 4),
                Text(
                  'Продолжая тему обсуждения, связанную с предшественниками человека, каждое живое существо хотя бы однажды хотело бы относиться к другому виду. А к кому относите себя вы?', //
                  //'
                ),
                SizedBox(height: 15),
                TestCardStats(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
