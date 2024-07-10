import 'package:agakesi_fe/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../utils/constants/colors.dart';
import '../../utils/constants/texts.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(AppSizes.defaultSpace),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const HeaderText(),
                const SizedBox(height: AppSizes.spaceBtwSections),
                Column(
                  children: <Widget>[
                    OutlinedButton(onPressed: () {}, child: Row()),
                    OutlinedButton(onPressed: () {}, child: Row())
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
