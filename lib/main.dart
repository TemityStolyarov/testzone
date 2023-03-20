import 'package:flutter/material.dart';
import 'package:testzone/features/feed/utils/feed_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'features/auth/account_screen.dart';
import 'features/auth/home_screen.dart';
import 'features/auth/login_screen.dart';
import 'features/auth/reset_password_screen.dart';
import 'features/auth/signup_screen.dart';
import 'features/auth/utils/firebase_stream.dart';
import 'features/auth/verify_email_screen.dart';
import 'firebase_options.dart';

// Future for Auth
Future<void> main() async {
// Ensure that app has beed started
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
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
        //const FeedPage(title: 'Главная'),
        '/': (context) => const FirebaseStream(),
        //FeedPage(title: 'Главная')
        '/home': (context) => const HomeScreen(),
        '/account': (context) => const AccountScreen(),
        '/login': (context) => const LoginScreen(),
        '/signup': (context) => const SignUpScreen(),
        '/reset_password': (context) => const ResetPasswordScreen(),
        '/verify_email': (context) => const VerifyEmailScreen(),
      },
      initialRoute: '/',
    );
  }
}
