import 'dart:async';

import 'package:cv_send/_childrens/home/_childrens/info/bloc/bloc.dart';
import 'package:cv_send/_childrens/home/_childrens/repository.dart';
import 'package:cv_send/utils/colors.dart';
import 'package:cv_send/utils/functions.dart';
import 'package:cv_send/utils/responsive.dart';
import 'package:cv_send/utils/spacing.dart';
import 'package:cv_send/utils/text/text.dart';
import 'package:cv_send/utils/xigo_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

part 'package:cv_send/_childrens/info/_sections/header.dart';
part 'package:cv_send/_childrens/info/_sections/item_container.dart';
part 'package:cv_send/_childrens/info/_sections/item_text.dart';

class Page extends StatelessWidget {
  const Page({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: BlocProvider(
        create: (context) => BlocInfo(
          repository: Repository(),
        )..add(GetExperiencesEvent()),
        child: ListView(
          padding: EdgeInsets.symmetric(
            vertical:
                size.height > 1000 ? size.height * 0.2 : size.height * 0.1,
            horizontal: size.width > 1000 ? size.width * 0.2 : size.width * 0.1,
          ),
          children: [
            const Header(),
            const Gap(CvSpacing.xxl),
            XigoText.fontSizeCustom(
              label: InitProyectUiValues.aboutMeSpanish,
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
            const Gap(CvSpacing.sm),
            XigoText.body(
              label: InitProyectUiValues.mePresentation,
              fontWeight: FontWeight.w400,
              textAlign: TextAlign.justify,
            ),
            const Gap(CvSpacing.xxl),
            XigoText.fontSizeCustom(
              label: InitProyectUiValues.workExperience,
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
            BlocBuilder<BlocInfo, InfoState>(
              builder: (context, state) {
                return Column(
                  children: [
                    ...List.generate(state.model.experiences.length, (index) {
                      final item = state.model.experiences[index];
                      return Container(
                        child: Row(
                          children: [
                            Row(
                              children: [
                                ItemText(
                                  textTile: item.title,
                                  onTap: () {
                                    Functions.launchInBrowser(
                                      url: item.urlSite,
                                    );
                                  },
                                ),
                                const Gap(CvSpacing.md),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: CvSpacing.xxs,
                                    horizontal: CvSpacing.sl,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(CvSpacing.xxs),
                                    color: XigoColors.azureishWhite,
                                    border: Border.all(
                                      color:
                                          XigoColors.azureishWhite.withOpacity(
                                        0.5,
                                      ),
                                    ),
                                  ),
                                  child: XigoText.labelText(
                                    label: 'Remote',
                                    color: XigoColors.containerSelected,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    }),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
