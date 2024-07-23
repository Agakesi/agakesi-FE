import 'package:agakesi_fe/utils/constants/routes.dart';
import 'package:flutter/material.dart';
import 'screens/auth/sign_in.dart';
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
      home: const SignInScreen(),
      routes: AppRoutes.routes,
    );
  }
}
