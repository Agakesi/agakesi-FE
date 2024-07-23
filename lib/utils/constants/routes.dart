import 'package:agakesi_fe/utils/constants/texts.dart';
import 'package:flutter/material.dart';

import '../../screens/auth/forgot_pswd.dart';
import '../../screens/auth/new_pswd.dart';
import '../../screens/auth/new_pswd_success.dart';
import '../../screens/auth/reset_pswd_with_email.dart';
import '../../screens/auth/reset_pswd_with_phone.dart';
import '../../screens/auth/sign_in.dart';
import '../../screens/auth/sign_up.dart';
import '../../screens/auth/verify_code.dart';

class AppRoutes {
  AppRoutes._();

  // BuildContext context;

  static Map<String, Widget Function(BuildContext)> routes = {
    AppTexts.signupRoute: (context) => const SignUpScreen(),
    AppTexts.signinRoute: (context) => const SignInScreen(),
    AppTexts.forgotPswdRoute: (context) => const ForgotPswdScreen(),
    AppTexts.resetPswdWithEmailRoute: (context) => const ResetPswdWithEmail(),
    AppTexts.resetPswdWithPhoneRoute: (context) => const ResetPswdWithPhone(),
    AppTexts.verifyCodeRoute: (context) => VerifyCode(),
    AppTexts.newPswdRoute: (context) => const NewPassword(),
    AppTexts.newPswdSuccessRoute: (context) => const NewPasswordSuccess(),
  };
}
