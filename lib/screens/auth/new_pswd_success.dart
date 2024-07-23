import 'package:agakesi_fe/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import '../../utils/constants/colors.dart';
import '../../utils/constants/texts.dart';

class NewPasswordSuccess extends StatefulWidget {
  const NewPasswordSuccess({super.key});

  @override
  State<NewPasswordSuccess> createState() => _NewPasswordSuccessState();
}

class _NewPasswordSuccessState extends State<NewPasswordSuccess> {
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
                const Center(child: CircleWithCheckIcon()),
                const SizedBox(height: AppSizes.spaceBtwSections * 6),

                /// LOGIN BUTTON
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () async {
                      await Navigator.of(context)
                          .pushNamed(AppTexts.signinRoute);
                    },
                    child: const Text(AppTexts.login),
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
              AppTexts.pswdResetSuccess,
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium
                  ?.copyWith(fontWeight: FontWeight.w700),
            ),

            /// HEADER SUB TEXT
            Text(
              AppTexts.pswdResetSuccessSubText,
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

class CircleWithCheckIcon extends StatelessWidget {
  const CircleWithCheckIcon({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 285,
      height:
          285, // Ensure the container is a circle by setting equal width and height
      decoration: BoxDecoration(
        color: const Color.fromRGBO(98, 200, 134, 0.2), // Fill color
        shape: BoxShape.circle,
        border: Border.all(
          color: const Color(0xFF5FD788), // Border color
          width: 2, // Border width
        ),
      ),
      child: const Center(
        child: Icon(
          Icons.check,
          size: 147.1,
          color: Color(0xFF5FD788), // Adjust the color if needed
        ),
      ),
    );
  }
}
