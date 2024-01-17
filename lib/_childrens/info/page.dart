import 'dart:async';

import 'package:cv_send/utils/colors.dart';
import 'package:cv_send/utils/functions.dart';
import 'package:cv_send/utils/spacing.dart';
import 'package:cv_send/utils/text/text.dart';
import 'package:cv_send/utils/xigo_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

part 'package:cv_send/_childrens/info/_sections/header.dart';
part 'package:cv_send/_childrens/info/_sections/item_container.dart';
part 'package:cv_send/_childrens/info/_sections/item_text.dart';

class Page extends StatelessWidget {
  const Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(
          vertical: InitProyectUiValues.spacingXSL,
          horizontal: InitProyectUiValues.spacingXSL,
        ),
        children: [
          const Header(),
          const Gap(
            CvSpacing.xxl,
          ),
          XigoText.fontSizeCustom(
            label: InitProyectUiValues.aboutMeSpanish,
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ],
      ),
    );
  }
}
