import 'package:agakesi_fe/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../utils/constants/sizes.dart';
import '../../utils/constants/texts.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
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

                /// SIGN IN FORM FIELDS
                SignInFormView(context: context),
                const SizedBox(height: AppSizes.spaceBtwSections),

                /// OR WITH DIVIDER
                const DividerWidget(),
                const SizedBox(height: AppSizes.spaceBtwSections),

                /// LOGIN WITH GOOGLE
                const LoginWithGoogle(),
                const SizedBox(height: AppSizes.spaceBtwSections),

                /// DON'T HAVE ACCOUNT? SIGNUP
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      AppTexts.dontHaveAnAccount,
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(color: AppColors.darkerGrey),
                    ),
                    const SizedBox(width: AppSizes.xs),
                    Text(
                      AppTexts.signup,
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(color: AppColors.primary),
                    ),
                  ],
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
            decoration: InputDecoration(
              hintText: AppTexts.enterYourPassword,
              hintStyle: Theme.of(context)
                  .textTheme
                  .bodySmall
                  ?.copyWith(color: AppColors.darkGrey),
              suffixIcon: const Icon(Iconsax.eye_slash),
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

class LoginWithGoogle extends StatelessWidget {
  const LoginWithGoogle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: OutlinedButton(
        onPressed: () {},
        style: OutlinedButton.styleFrom(
          side: const BorderSide(
            color: AppColors.darkGrey,
            width: 1,
          ), // Border color and width
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8), // Border radius
          ),
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: AppSizes.iconMd,
              width: AppSizes.iconMd,
              child: Image(
                image: AssetImage(
                  AppTexts.googleIconPath,
                ),
              ),
            ),
            SizedBox(width: 8.0),
            Text(AppTexts.loginWithGoogle),
          ],
        ),
      ),
    );
  }
}

class DividerWidget extends StatelessWidget {
  const DividerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        const Flexible(
          child: Divider(
            color: AppColors.grey,
            thickness: 0.5,
            indent: 5,
            endIndent: 20,
          ),
        ),
        Text(AppTexts.or,
            style: Theme.of(context)
                .textTheme
                .titleSmall
                ?.copyWith(color: AppColors.darkGrey)),
        const Flexible(
          child: Divider(
            color: AppColors.grey,
            thickness: 0.5,
            indent: 20,
            endIndent: 5,
          ),
        )
      ],
    );
  }
}
