import 'package:flutter/material.dart';
import 'package:flutter_dashboard/pages/auth.page.dart';
import 'package:flutter_dashboard/pages/home.page.dart';
import 'config.dart';

void main() async {
  await initSettings();

  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.indigoAccent,
        colorScheme: const ColorScheme(
          brightness: Brightness.dark,
          primary: Colors.indigoAccent,
          onPrimary: Color.fromARGB(255, 24, 24, 24),
          secondary: Color.fromARGB(255, 24, 24, 24),
          onSecondary: Colors.white,
          error: Colors.redAccent,
          onError: Colors.white,
          background: Color.fromARGB(255, 255, 255, 255),
          onBackground: Color.fromARGB(255, 24, 24, 24),
          surface: Colors.white,
          onSurface: Color.fromARGB(255, 32, 32, 32),
        ),
      ),
      initialRoute: '/auth',
      routes: {
        '/auth': (context) => const AuthPage(),
        '/home': (context) => const HomePage(),
      },
    );
  }
}
