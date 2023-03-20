import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../feed/widgets/test_card.dart';
import 'account_screen.dart';
import 'login_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Главная страница'),
        actions: [
          IconButton(
            onPressed: () {
              if ((user == null)) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()),
                );
              } else {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AccountScreen()),
                );
              }
            },
            icon: Icon(
              (user == null) ? Icons.person_outline : Icons.person,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Center(
          child: (user == null)
              ? Column(
                  mainAxisSize: MainAxisSize.max,
                  children: const [
                    TestCard(),
                    SizedBox(height: 3),
                    TestCard(),
                    SizedBox(height: 3),
                    Text('2 теста'),
                  ],
                )
              : Column(
                  mainAxisSize: MainAxisSize.max,
                  children: const [
                    TestCard(),
                    SizedBox(height: 3),
                    TestCard(),
                    SizedBox(height: 3),
                    Text('2 теста'),
                  ],
                ),
        ),
      ),
    );
  }
}
