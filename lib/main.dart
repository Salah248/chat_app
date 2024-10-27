import 'package:chat_app/Pages/chat_page.dart';
import 'package:chat_app/Pages/signin_page.dart';
import 'package:chat_app/Pages/logn_page.dart';
import 'package:chat_app/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const ScholarChat());
}

class ScholarChat extends StatelessWidget {
  const ScholarChat({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'HomePage': (context) => const HomePage(),
        'ResgisterPage': (context) => const ResgisterPage(),
        ChatPage.id: (context) => ChatPage()
      },
      initialRoute: 'HomePage',
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
