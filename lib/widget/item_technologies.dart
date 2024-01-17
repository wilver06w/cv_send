
import 'package:cv_send/utils/colors.dart';
import 'package:cv_send/utils/text/text.dart';
import 'package:cv_send/utils/xigo_ui.dart';
import 'package:flutter/material.dart';

class ItemTechnologies extends StatelessWidget {
  const ItemTechnologies({
    super.key,
    required this.technologies,
  });
  final String technologies;
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        margin: const EdgeInsets.all(
          InitProyectUiValues.spacingXs,
        ),
        padding: const EdgeInsets.all(
          InitProyectUiValues.spacingXs,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            10.0,
          ), // All corners rounded with 10 radius
          color: Colors.blue,
        ),
        child: XigoText.labelText(
          label: technologies,
          color: XigoColors.textColor,
          textOverflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
