import 'package:agakesi_fe/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../utils/constants/colors.dart';
import '../../utils/constants/texts.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(AppSizes.defaultSpace),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const HeaderText(),
                const SizedBox(height: AppSizes.spaceBtwSections),
                const SizedBox(height: AppSizes.spaceBtwSections),
                Column(
                  children: <Widget>[
                    const PasswordRecoveryOption(
                      recoveryMthdText: AppTexts.email,
                      subText: AppTexts.sendToYourEmail,
                      icon: Icons.email_outlined,
                      destRoute: AppTexts.resetPswdWithEmailRoute,
                    ),
                    const SizedBox(height: AppSizes.spaceBtwItems),
                    const PasswordRecoveryOption(
                      recoveryMthdText: AppTexts.phoneNumber,
                      subText: AppTexts.sendToYourPhoneNumber,
                      icon: Icons.call_outlined,
                      destRoute: AppTexts.resetPswdWithPhoneRoute,
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

class PasswordRecoveryOption extends StatelessWidget {
  const PasswordRecoveryOption({
    super.key,
    required this.recoveryMthdText,
    required this.subText,
    required this.icon,
    required this.destRoute,
  });

  final String recoveryMthdText;
  final String subText;
  final String destRoute;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        Navigator.of(context).pushNamed(destRoute);
      },
      child: Row(
        children: <Widget>[
          Container(
            width: AppSizes.iconBox,
            height: AppSizes.iconBox,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: AppColors.darkGrey,
                width: AppSizes.dividerHeight,
              ),
            ),
            child: Icon(icon, size: AppSizes.iconMd),
          ),
          const SizedBox(width: AppSizes.defaultSpace),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                recoveryMthdText,
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium
                    ?.copyWith(fontWeight: FontWeight.w400),
              ),
              Text(
                subText,
                style: Theme.of(context)
                    .textTheme
                    .bodySmall
                    ?.copyWith(color: AppColors.darkGrey),
              )
            ],
          )
        ],
      ),
    );
  }
}

class HeaderText extends StatelessWidget {
  const HeaderText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            /// FOERGOT PASSWORD
            Text(
              AppTexts.forgotPassword,
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium
                  ?.copyWith(fontWeight: FontWeight.w700),
            ),

            /// HEADER SUB TEXT
            Text(
              AppTexts.forgotPasswordHeaderSubText,
              style: Theme.of(context)
                  .textTheme
                  .bodySmall
                  ?.copyWith(color: AppColors.darkGrey),
            ),
          ],
        )
      ],
    );
  }
}
