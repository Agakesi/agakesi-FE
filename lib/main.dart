import 'package:flutter/material.dart';
import 'screens/auth/sign_in.dart';
import 'screens/auth/sign_up.dart';
import 'utils/constants/texts.dart';
import 'utils/theme/theme.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Agakesi',
      themeMode: ThemeMode.system,
      theme: AGAppTheme.lightTheme,
      darkTheme: AGAppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      home: const SignUpScreen(),
      routes: {
        AppTexts.signupScreenRoute: (context) => const SignUpScreen(),
      },
    );
  }
}
