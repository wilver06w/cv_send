import 'dart:async';

import 'package:cv_send/_childrens/home/_childrens/info/bloc/bloc.dart';
import 'package:cv_send/_childrens/home/_childrens/repository.dart';
import 'package:cv_send/utils/colors.dart';
import 'package:cv_send/utils/functions.dart';
import 'package:cv_send/utils/navigation.dart';
import 'package:cv_send/utils/responsive.dart';
import 'package:cv_send/utils/spacing.dart';
import 'package:cv_send/utils/text/text.dart';
import 'package:cv_send/utils/xigo_ui.dart';
import 'package:cv_send/widget/container_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:gif_view/gif_view.dart';
import 'package:google_fonts/google_fonts.dart';

part 'package:cv_send/_childrens/info/_sections/header.dart';
part 'package:cv_send/_childrens/info/_sections/item_container.dart';
part 'package:cv_send/_childrens/info/_sections/item_education.dart';
part 'package:cv_send/_childrens/info/_sections/item_experience.dart';
part 'package:cv_send/_childrens/info/_sections/item_text.dart';

class Page extends StatelessWidget {
  const Page({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: BlocProvider(
        create: (context) => BlocInfo(repository: Repository())
          ..add(GetExperiencesEvent())
          ..add(GetProjectsEvent()),
        child: ListView(
          padding: EdgeInsets.symmetric(
            vertical: size.height > 1400
                ? size.height * 0.2
                : size.height * 0.1,
            horizontal: size.width > 1300
                ? size.width * 0.28
                : size.width * 0.07,
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
              textStyle: GoogleFonts.lato(),
              fontWeight: FontWeight.w400,
              textAlign: TextAlign.start,
            ),
            const Gap(CvSpacing.xxl),
            XigoText.fontSizeCustom(
              label: InitProyectUiValues.workExperience,
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
            const Gap(CvSpacing.md),
            BlocBuilder<BlocInfo, InfoState>(
              builder: (context, state) {
                return Column(
                  children: [
                    ...List.generate(state.model.experiences.length, (index) {
                      final item = state.model.experiences[index];
                      return ItemExperience(
                        date: item.date,
                        urlSite: item.urlSite,
                        title: item.title,
                        descriptionSpanish: item.descriptionSpanish,
                      );
                    }),
                  ],
                );
              },
            ),
            const Gap(CvSpacing.xl),
            XigoText.fontSizeCustom(
              label: InitProyectUiValues.education,
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
            const Gap(CvSpacing.md),
            const ItemEducation(
              title: InitProyectUiValues.integratedManagementSystems,
              ubication: InitProyectUiValues.uniPopularCesar,
              date: '2023',
              type: InitProyectUiValues.postgraduate,
            ),
            const Gap(CvSpacing.lg),
            const ItemEducation(
              title: InitProyectUiValues.enginnerSystem,
              ubication: InitProyectUiValues.uniPopularCesar,
              date: '2022',
              type: InitProyectUiValues.titleProfessional,
            ),
            const Gap(CvSpacing.xl),
            XigoText.fontSizeCustom(
              label: InitProyectUiValues.skills,
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
            const Gap(CvSpacing.md),
            BlocBuilder<BlocInfo, InfoState>(
              builder: (context, state) {
                return Wrap(
                  children: List.generate(state.model.skills.length, (index) {
                    final item = state.model.skills[index];
                    return Wrap(
                      spacing: CvSpacing.sm,
                      children: [
                        ContainerItem(title: item),
                        const Gap(CvSpacing.sl),
                      ],
                    );
                  }),
                );
              },
            ),
            const Gap(CvSpacing.md),
            XigoText.fontSizeCustom(
              label: InitProyectUiValues.project,
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
            const Gap(CvSpacing.md),
            BlocBuilder<BlocInfo, InfoState>(
              builder: (context, state) {
                return Wrap(
                  spacing: CvSpacing.xs,
                  children: List.generate(state.model.projects.length, (index) {
                    final project = state.model.projects[index];
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        XigoText.body(
                          label: project.title,
                          textStyle: GoogleFonts.lato(),
                        ),
                        const Gap(CvSpacing.xs),
                        project.routeGif.isEmpty
                            ? InkWell(
                                onTap: () {
                                  XigoRoute.navProject(itemProject: project);
                                },
                                child: Image.asset(
                                  project.routeImage,
                                  height: 200,
                                  width: 200,
                                ),
                              )
                            : InkWell(
                                onTap: () {
                                  XigoRoute.navProject(itemProject: project);
                                },
                                child: GifView.asset(
                                  project.routeGif,
                                  height: 200,
                                  width: 200,
                                  frameRate: 30,
                                ),
                              ),
                      ],
                    );
                  }),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
