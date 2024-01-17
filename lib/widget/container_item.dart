import 'package:cv_send/utils/colors.dart';
import 'package:cv_send/utils/spacing.dart';
import 'package:cv_send/utils/text/text.dart';
import 'package:flutter/material.dart';

class ContainerItem extends StatelessWidget {
  const ContainerItem({
    super.key,
    required this.title,
  });
  final String title;

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
          color: XigoColors.azureishWhite.withOpacity(
            0.5,
          ),
        ),
      ),
      child: XigoText.labelText(
        label: title,
        color: XigoColors.containerSelected,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
