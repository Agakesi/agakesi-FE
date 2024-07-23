import 'package:agakesi_fe/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import '../../utils/components/input_pswd_tile.dart';
import '../../utils/constants/colors.dart';
import '../../utils/constants/texts.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({super.key});

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  late TextEditingController _passwordTextController;
  bool pswdIsObscured = true;
  bool confirmPswdIsObscured = true;

  @override
  void initState() {
    _passwordTextController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _passwordTextController.dispose();
    super.dispose();
  }

  void toggleObscurePswdText() {
    setState(() {
      pswdIsObscured = !pswdIsObscured;
    });
  }

  void toggleObscureConfirmPswdText() {
    setState(() {
      confirmPswdIsObscured = !confirmPswdIsObscured;
    });
  }

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

                /// PASSWORD
                InputPasswordTile(
                  headerText: AppTexts.password,
                  hintText: AppTexts.enterYourPassword,
                  isObscured: pswdIsObscured,
                  toggleObscureText: toggleObscurePswdText,
                ),
                const SizedBox(height: AppSizes.spaceBtwItems),

                /// CONFIRM PASSWORD
                InputPasswordTile(
                  headerText: AppTexts.confirmPassword,
                  hintText: AppTexts.retypeYourPassword,
                  isObscured: confirmPswdIsObscured,
                  toggleObscureText: toggleObscureConfirmPswdText,
                ),
                const SizedBox(height: AppSizes.spaceBtwSections * 5),

                /// DONE
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () async {
                      await Navigator.of(context)
                          .pushNamed(AppTexts.newPswdSuccessRoute);
                    },
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
