import 'package:flutter/material.dart';
import 'package:testzone/features/settings/color_schemes.dart';

class TestCardRating extends StatelessWidget {
  const TestCardRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Icon(
          Icons.star_border_outlined,
          size: 15,
        ),
        Text(
          '4.8',
          textScaleFactor: 0.85,
        ),
      ],
    );
  }
}

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
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Каким животным ты бы хотел быть? ', // Продолжая тему обсуждения, связанную с
                  //предшественниками человека, каждое живое существо хотя бы однажды хотело бы относиться к другому виду. А к кому относите себя вы?'
                ),
                Text(
                  'Автор: @username',
                  textScaleFactor: 0.85,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TestCardRating(),
                      Row(
                        children: [
                          Row(
                            children: const [
                              //there also could be an image
                              Text(
                                '~65%',
                                textScaleFactor: 0.85,
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Row(
                            children: const [
                              Text(
                                '3.6k',
                                textScaleFactor: 0.85,
                              ),
                              Icon(
                                Icons.done_all_outlined,
                                size: 15,
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
