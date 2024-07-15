import 'package:agakesi_fe/screens/auth/new_pswd.dart';
import 'package:agakesi_fe/screens/auth/reset_pswd_with_email.dart';
import 'package:agakesi_fe/screens/auth/verify_code.dart';
import 'package:flutter/material.dart';
import 'screens/auth/forgot_pswd.dart';
import 'screens/auth/reset_pswd_with_phone.dart';
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
      home: const SignInScreen(),
      routes: {
        AppTexts.signupRoute: (context) => const SignUpScreen(),
        AppTexts.signinRoute: (context) => const SignInScreen(),
        AppTexts.forgotPswdRoute: (context) => const ForgotPswdScreen(),
        AppTexts.resetPswdWithEmailRoute: (context) =>
            const ResetPswdWithEmail(),
        AppTexts.resetPswdWithPhoneRoute: (context) =>
            const ResetPswdWithPhone(),
        AppTexts.verifyCodeRoute: (context) => const VerifyCode(),
        AppTexts.newPswdRoute: (context) => const NewPassword(),
      },
    );
  }
}
