import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/sizes.dart';

class InputTile extends StatelessWidget {
  const InputTile({
    super.key,
    required this.headerText,
    required this.hintText,
    this.destRoute,
  });

  final String headerText;
  final String hintText;
  final String? destRoute;

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
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: Theme.of(context)
                .textTheme
                .bodySmall
                ?.copyWith(color: AppColors.darkGrey),
          ),
          onFieldSubmitted: (value) async {
            if (destRoute != null) {
              await Navigator.of(context).pushNamed(destRoute!);
            }
          },
        ),
      ],
    );
  }
}
