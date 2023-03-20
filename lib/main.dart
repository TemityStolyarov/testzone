import 'package:flutter/material.dart';
import 'package:testzone/features/feed/utils/feed_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

// Future for Auth
Future<void> main() async {
// Ensure that app has beed started
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  //     options: DefaultFirebaseOptions.currentPlatform,
  //     );
  runApp(const MyApp());

//   await Firebase.initializeApp(
//     options: DefaultFirebaseOptions.currentPlatform,
// );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        pageTransitionsTheme: const PageTransitionsTheme(
          builders: {TargetPlatform.android: CupertinoPageTransitionsBuilder()},
        ),
      ),
      routes: {
        '/': (context) =>
            const FeedPage(title: 'Главная') //const FirebaseStream()
        //'/home':(context) => const
      },
      initialRoute: '/',
    );
  }
}
