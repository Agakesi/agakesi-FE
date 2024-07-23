import 'package:agakesi_fe/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../utils/components/input_tile.dart';
import '../../utils/constants/colors.dart';
import '../../utils/constants/texts.dart';

class ResetPswdWithPhone extends StatelessWidget {
  const ResetPswdWithPhone({super.key});

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
                const SizedBox(height: AppSizes.spaceBtwSections * 2),
                const InputTile(
                  headerText: AppTexts.phoneNumber,
                  hintText: AppTexts.enterYourPhoneNumber,
                  destRoute: AppTexts.verifyCodeRoute,
                ),
                const SizedBox(height: AppSizes.spaceBtwSections * 4),

                /// CONTINUE
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () async {
                      await Navigator.of(context)
                          .pushNamed(AppTexts.verifyCodeRoute);
                    },
                    child: const Text(AppTexts.contnue),
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
              AppTexts.resetPassword,
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium
                  ?.copyWith(fontWeight: FontWeight.w700),
            ),

            /// HEADER SUB TEXT
            Text(
              AppTexts.resetWithPhoneSubText,
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
