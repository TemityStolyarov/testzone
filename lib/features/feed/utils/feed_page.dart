import 'package:flutter/material.dart';
import 'package:testzone/features/feed/widgets/test_card.dart';
import 'package:testzone/features/settings/color_schemes.dart';

class FeedPage extends StatelessWidget {
  const FeedPage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColorScheme.feedBackgroundColor,
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          //TestCard(),
          SizedBox(height: 3),
          //TestCard(),
          SizedBox(height: 3),
          Text('2 теста'),
        ],
      ),
    );
  }
}
