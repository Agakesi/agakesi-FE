import 'package:agakesi_fe/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../utils/components/auth_bottom_route_text.dart';
import '../../utils/components/auth_with_google.dart';
import '../../utils/components/divider.dart';
import '../../utils/constants/sizes.dart';
import '../../utils/constants/texts.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(
              AppSizes.defaultSpace,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                /// WELCOME BACK
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppTexts.welcomeBack,
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium
                          ?.copyWith(fontWeight: FontWeight.w700),
                    ),
                    Text(
                      AppTexts.welcomeBackExplore,
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall
                          ?.copyWith(color: AppColors.darkGrey),
                    )
                  ],
                ),
                const SizedBox(height: AppSizes.spaceBtwItems),

                /// SIGN IN FORM VIEW
                SignInFormView(context: context),
                const SizedBox(height: AppSizes.spaceBtwSections),

                /// OR WITH DIVIDER
                const DividerWidget(text: AppTexts.or),
                const SizedBox(height: AppSizes.spaceBtwSections),

                /// LOGIN WITH GOOGLE
                const AuthWithGoogle(text: AppTexts.loginWithGoogle),
                const SizedBox(height: AppSizes.spaceBtwSections),

                /// DON'T HAVE ACCOUNT? SIGNUP
                const AuthBottomRouteText(
                  mainText: AppTexts.dontHaveAnAccount,
                  authText: AppTexts.signup,
                  authRoute: AppTexts.signupScreenRoute,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SignInFormView extends StatefulWidget {
  const SignInFormView({
    super.key,
    required this.context,
  });

  final BuildContext context;

  @override
  State<SignInFormView> createState() => _SignInFormViewState();
}

class _SignInFormViewState extends State<SignInFormView> {
  late final TextEditingController _emailTextController;
  late final TextEditingController _passwordTextController;

  bool isObscured = true;

  @override
  void initState() {
    _emailTextController = TextEditingController();
    _passwordTextController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _emailTextController.dispose();
    _passwordTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          /// EMAIL
          Padding(
            padding: const EdgeInsets.only(bottom: AppSizes.sm),
            child: Text(
              AppTexts.email,
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(fontWeight: FontWeight.w600),
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: AppTexts.enterYourEmailAddress,
              hintStyle: Theme.of(context)
                  .textTheme
                  .bodySmall
                  ?.copyWith(color: AppColors.darkGrey),
            ),
          ),
          const SizedBox(height: AppSizes.spaceBtwItems),

          /// PASSWORD
          Padding(
            padding: const EdgeInsets.only(bottom: AppSizes.sm),
            child: Text(
              AppTexts.password,
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(fontWeight: FontWeight.w600),
            ),
          ),
          TextFormField(
            obscureText: isObscured,
            decoration: InputDecoration(
              hintText: AppTexts.enterYourPassword,
              hintStyle: Theme.of(context)
                  .textTheme
                  .bodySmall
                  ?.copyWith(color: AppColors.darkGrey),
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    isObscured = !isObscured;
                  });
                },
                icon: isObscured
                    ? const Icon(Iconsax.eye_slash)
                    : const Icon(Iconsax.eye),
              ),
              suffixIconColor: const Color(0xFF9CA3AF),
            ),
          ),

          /// FORGOT BUTTON
          const Padding(
            padding: EdgeInsets.only(top: AppSizes.sm),
            child: Align(
              alignment: Alignment.topRight,
              child: Text(
                AppTexts.forgotPassword,
                style: TextStyle(color: AppColors.primary),
              ),
            ),
          ),
          const SizedBox(height: AppSizes.spaceBtwSections),

          /// LOGIN BUTTON
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text(AppTexts.login),
            ),
          ),
        ],
      ),
    );
  }
}
