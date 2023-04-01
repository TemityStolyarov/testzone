import 'package:flutter/material.dart';
import 'package:testzone/core/utils/routes/name_routes.dart';
import 'package:testzone/features/home/widgets/test_card.dart';
import 'package:testzone/features/settings/color_schemes.dart';
import 'package:testzone/generated/l10n.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  int get lengthList => 120;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColorScheme.feedBackgroundColor,
      appBar: AppBar(
        title: Text(S.of(context).main),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, NameRoutes.signIn);
            },
            icon: Icon(
              Icons.person,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverList(
              delegate: SliverChildBuilderDelegate(
                childCount: lengthList,
                (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0),
                    child: index % 2 == 0
                        ? TestCard(
                            title: 'Могут ли коты летать?',
                            description:
                                'Многие годы люди задавались вопросом: а сможет ли их пушистик, подобно фее, взлететь к небу? Ковер-самолет на восток унесет результат Вашего теста!',
                            authorUsername: 'authorUsername',
                            rating: 4.8,
                            timesPassed: 3.6,
                            publishTime: DateTime.now(),
                            onTap: () {
                              debugPrint('Card tapped.');
                            },
                          )
                        : TestCard(
                            title: 'Каким животным ты бы хотел быть?',
                            description:
                                'Продолжая тему обсуждения, связанную с предшественниками человека, каждое живое существо хотя бы однажды хотело бы относиться к другому виду. А к кому относите себя вы?',
                            authorUsername: 'authorUsername',
                            rating: 4.8,
                            timesPassed: 3.6,
                            publishTime: DateTime.now(),
                            onTap: () {
                              debugPrint('Card tapped.');
                            },
                          ),
                  );
                },
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Center(
                    child: Text('$lengthList теста'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
