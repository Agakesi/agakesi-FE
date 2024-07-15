import 'package:agakesi_fe/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../utils/constants/colors.dart';
import '../../utils/constants/texts.dart';

class ForgotPswdScreen extends StatelessWidget {
  const ForgotPswdScreen({super.key});

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
                      autofocus: true,
                    ),
                    const SizedBox(height: AppSizes.spaceBtwItems),
                    const PasswordRecoveryOption(
                      recoveryMthdText: AppTexts.phoneNumber,
                      subText: AppTexts.sendToYourPhoneNumber,
                      icon: Icons.call_outlined,
                      destRoute: AppTexts.resetPswdWithPhoneRoute,
                      autofocus: false,
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

class PasswordRecoveryOption extends StatefulWidget {
  const PasswordRecoveryOption({
    super.key,
    required this.recoveryMthdText,
    required this.subText,
    required this.icon,
    required this.destRoute,
    required this.autofocus,
  });

  final String recoveryMthdText;
  final String subText;
  final String destRoute;
  final IconData icon;
  final bool autofocus;

  @override
  State<PasswordRecoveryOption> createState() => _PasswordRecoveryOptionState();
}

class _PasswordRecoveryOptionState extends State<PasswordRecoveryOption> {
  bool isFocus = false;
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      autofocus: widget.autofocus,
      onPressed: () {
        Navigator.of(context).pushNamed(widget.destRoute);
      },
      style: OutlinedButton.styleFrom(
        side: BorderSide(
            color: isFocus ? AppColors.primary : const Color(0xFFF3F4F6)),
        backgroundColor: const Color(0xFFFAFAFA),
      ),
      onFocusChange: (value) {
        setState(() {
          isFocus = value;
        });
      },
      child: Row(
        children: <Widget>[
          Container(
            width: AppSizes.iconBox,
            height: AppSizes.iconBox,
            decoration: BoxDecoration(
              color: const Color(0xFFFAFAFA),
              shape: BoxShape.circle,
              border: Border.all(
                color: isFocus ? AppColors.primary : AppColors.darkGrey,
                width: AppSizes.dividerHeight,
              ),
            ),
            child: Icon(
              widget.icon,
              size: AppSizes.iconMd,
              color: isFocus ? AppColors.primary : AppColors.darkGrey,
            ),
          ),
          const SizedBox(width: AppSizes.defaultSpace),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(widget.recoveryMthdText,
                  style: Theme.of(context).textTheme.titleLarge),
              Text(
                widget.subText,
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
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                fontVariations: [const FontVariation('opsz', 16.0)],
              ),
            ),
          ],
        )
      ],
    );
  }
}
