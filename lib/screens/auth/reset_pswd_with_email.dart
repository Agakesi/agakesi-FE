import 'package:agakesi_fe/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../utils/components/input_tile.dart';
import '../../utils/constants/colors.dart';
import '../../utils/constants/texts.dart';

class ResetPswdWithEmail extends StatelessWidget {
  const ResetPswdWithEmail({super.key});

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
                const InputTile(
                  headerText: AppTexts.email,
                  hintText: AppTexts.enterYourEmailAddress,
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
            /// RESET PASSWORD
            Text(
              AppTexts.resetPassword,
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium
                  ?.copyWith(fontWeight: FontWeight.w700),
            ),

            /// HEADER SUB TEXT
            Text(
              AppTexts.resetWithEmailSubText,
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
