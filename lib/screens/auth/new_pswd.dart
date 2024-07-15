import 'package:agakesi_fe/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../utils/components/input_tile.dart';
import '../../utils/constants/colors.dart';
import '../../utils/constants/texts.dart';

class NewPassword extends StatelessWidget {
  const NewPassword({super.key});

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
                const InputTile(
                  headerText: AppTexts.password,
                  hintText: AppTexts.enterYourPassword,
                ),
                const SizedBox(height: AppSizes.spaceBtwItems),
                const InputTile(
                  headerText: AppTexts.confirmPassword,
                  hintText: AppTexts.retypeYourPassword,
                ),
                const SizedBox(height: AppSizes.spaceBtwSections * 4),

                /// CREATE AN ACCOUNT BUTTON
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(AppTexts.done),
                  ),
                ),
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
              AppTexts.newPassword,
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium
                  ?.copyWith(fontWeight: FontWeight.w700),
            ),

            /// HEADER SUB TEXT
            Text(
              AppTexts.newPasswordSubText,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: AppColors.darkGrey,
                fontVariations: [
                  const FontVariation('opsz', 16.0),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}