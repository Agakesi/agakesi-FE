import 'package:agakesi_fe/utils/constants/colors.dart';
import 'package:agakesi_fe/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

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
      children: <Widget>[
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
              onPressed: toggleObscureText,
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
