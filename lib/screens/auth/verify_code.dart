import 'package:agakesi_fe/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'dart:async';

import '../../utils/constants/colors.dart';
import '../../utils/constants/texts.dart';

class VerifyCode extends StatelessWidget {
  const VerifyCode({super.key});

  @override
  Widget build(BuildContext context) {
    /// PINPUT DEFAULTTHEME
    final defaultPinTheme = PinTheme(
      height: 52,
      width: 46,
      textStyle: Theme.of(context).textTheme.titleLarge,
      decoration: BoxDecoration(
        color: const Color(0xFFE6E8EB),
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(color: Colors.transparent),
      ),
    );

    /// PINPUT FOCUSEDPINTHEME
    final focusedPinTheme = defaultPinTheme.copyWith(
      textStyle: Theme.of(context)
          .textTheme
          .titleLarge
          ?.copyWith(color: AppColors.primary),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(color: AppColors.primary),
      ),
    );

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
                CodeInputWidget(
                  defaultPinTheme: defaultPinTheme,
                  focusedPinTheme: focusedPinTheme,
                ),
                const SizedBox(height: AppSizes.spaceBtwSections * 4),

                /// CONTINUE
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () async {
                      await Navigator.of(context)
                          .pushNamed(AppTexts.newPswdRoute);
                    },
                    child: const Text(AppTexts.submitOTP),
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

class CodeInputWidget extends StatefulWidget {
  const CodeInputWidget({
    super.key,
    required this.defaultPinTheme,
    required this.focusedPinTheme,
  });

  final PinTheme defaultPinTheme;
  final PinTheme focusedPinTheme;

  @override
  State<CodeInputWidget> createState() => _CodeInputWidgetState();
}

class _CodeInputWidgetState extends State<CodeInputWidget> {
  int _start = 60;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _timer = Timer.periodic(
      const Duration(seconds: 1),
      (timer) {
        if (_start == 0) {
          setState(() {
            _timer!.cancel();
          });
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Pinput(
            length: 5,
            defaultPinTheme: widget.defaultPinTheme,
            focusedPinTheme: widget.focusedPinTheme,
            onCompleted: (value) async {
              await Navigator.of(context).pushNamed(AppTexts.newPswdRoute);
            },
          ),
          const SizedBox(height: AppSizes.spaceBtwItems),
          Text('Resend code in: 00:${_start.toString().padLeft(2, '0')}',
              style: Theme.of(context).textTheme.titleMedium),
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
            /// RESET PASSWORD
            Text(
              AppTexts.verifyCode,
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium
                  ?.copyWith(fontWeight: FontWeight.w700),
            ),

            /// HEADER SUB TEXT
            Text(
              AppTexts.verifyCodeSubText,
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
