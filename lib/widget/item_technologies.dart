import 'package:cv_send/utils/colors.dart';
import 'package:cv_send/utils/spacing.dart';
import 'package:cv_send/utils/text/text.dart';
import 'package:flutter/material.dart';

class ItemTechnologies extends StatelessWidget {
  const ItemTechnologies({super.key, required this.technologies});
  final String technologies;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: CvSpacing.sm),
      padding: const EdgeInsets.symmetric(
        vertical: CvSpacing.xxs,
        horizontal: CvSpacing.sl,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(CvSpacing.xxs),
        color: XigoColors.azureishWhite,
        border: Border.all(
          color: XigoColors.azureishWhite.withValues(alpha: 0.5),
        ),
      ),
      child: XigoText.labelText(
        label: technologies,
        color: XigoColors.containerSelected,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
