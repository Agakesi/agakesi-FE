import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../utils/constants/colors.dart';
import '../../utils/constants/sizes.dart';
import '../../utils/constants/texts.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(
              AppSizes.defaultSpace,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                /// HEADER TEXTS
                SingUpHeaderTexts(),
                const SizedBox(height: AppSizes.spaceBtwItems),

                /// SIGN UN FORM VIEW
                SignUpFormView(),
                const SizedBox(height: AppSizes.spaceBtwSections),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SingUpHeaderTexts extends StatelessWidget {
  const SingUpHeaderTexts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        /// LET'S GET STARTED
        Text(
          AppTexts.letsGetStarted,
          style: Theme.of(context)
              .textTheme
              .headlineMedium
              ?.copyWith(fontWeight: FontWeight.w700),
        ),

        /// REGISTER TO START SAVING WITH AGAKESI
        RichText(
          text: TextSpan(
            text: AppTexts.registerToStartSavingWith,
            style: Theme.of(context)
                .textTheme
                .bodySmall
                ?.copyWith(color: AppColors.darkGrey),
            children: const <InlineSpan>[
              TextSpan(
                text: AppTexts.agakesi,
                style: TextStyle(color: AppColors.primary),
              ),
              TextSpan(text: AppTexts.today),
            ],
          ),
        )
      ],
    );
  }
}

class SignUpFormView extends StatefulWidget {
  const SignUpFormView({
    super.key,
  });

  @override
  State<SignUpFormView> createState() => _SignUpFormViewState();
}

class _SignUpFormViewState extends State<SignUpFormView> {
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

  void toggleObscureText() {
    setState(() {
      isObscured = !isObscured;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          /// FIRST NAME
          const SignUpInputTile(
              inputHeader: AppTexts.firstname,
              hintText: AppTexts.enterYourLastName),
          const SizedBox(height: AppSizes.spaceBtwItems),

          /// LAST NAME
          const SignUpInputTile(
              inputHeader: AppTexts.lastname,
              hintText: AppTexts.enterYourLastName),
          const SizedBox(height: AppSizes.spaceBtwItems),

          /// EMAIL
          const SignUpInputTile(
              inputHeader: AppTexts.email,
              hintText: AppTexts.enterYourEmailAddress),
          const SizedBox(height: AppSizes.spaceBtwItems),

          /// PHONE NUMBER
          const SignUpInputTile(
              inputHeader: AppTexts.phoneNumber,
              hintText: AppTexts.enterYourPhoneNumber),
          const SizedBox(height: AppSizes.spaceBtwItems),

          /// PASSWORD
          InputPasswordTile(
            headerText: AppTexts.password,
            hintText: AppTexts.enterYourPassword,
            isObscured: isObscured,
            toggleObscureText: toggleObscureText,
          ),
          const SizedBox(height: AppSizes.spaceBtwItems),

          /// CONFIRM PASSWORD
          InputPasswordTile(
            headerText: AppTexts.confirmPassword,
            hintText: AppTexts.retypeYourPassword,
            isObscured: isObscured,
            toggleObscureText: toggleObscureText,
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

class InputPasswordTile extends StatelessWidget {
  const InputPasswordTile({
    super.key,
    required this.headerText,
    required this.hintText,
    required this.isObscured,
    required this.toggleObscureText,
  });

  final String headerText;
  final String hintText;
  final bool isObscured;
  final VoidCallback toggleObscureText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: AppSizes.sm),
          child: Text(
            headerText,
            style: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.copyWith(fontWeight: FontWeight.w600),
          ),
        ),
        TextFormField(
          obscureText: isObscured,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: Theme.of(context)
                .textTheme
                .bodySmall
                ?.copyWith(color: AppColors.darkGrey),
            suffixIcon: IconButton(
              onPressed: () {},
              icon: isObscured
                  ? const Icon(Iconsax.eye_slash)
                  : const Icon(Iconsax.eye),
            ),
            suffixIconColor: const Color(0xFF9CA3AF),
          ),
        ),
      ],
    );
  }
}

class SignUpInputTile extends StatelessWidget {
  const SignUpInputTile({
    super.key,
    required this.inputHeader,
    required this.hintText,
  });

  final String inputHeader;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(bottom: AppSizes.sm),
          child: Text(
            inputHeader,
            style: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.copyWith(fontWeight: FontWeight.w600),
          ),
        ),
        TextFormField(
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: Theme.of(context)
                .textTheme
                .bodySmall
                ?.copyWith(color: AppColors.darkGrey),
          ),
        ),
      ],
    );
  }
}