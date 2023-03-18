import 'package:flutter/material.dart';
import 'package:testzone/features/feed/utils/widgets.dart';
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
        children: const [
          TestCard(),
          TestCard(),
        ],
      ),
    );
  }
}
