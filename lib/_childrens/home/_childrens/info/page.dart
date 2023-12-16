import 'package:cv_send/_childrens/home/_childrens/info/bloc/bloc.dart';
import 'package:cv_send/_childrens/home/_childrens/repository.dart';
import 'package:cv_send/utils/colors.dart';
import 'package:cv_send/utils/text/text.dart';
import 'package:cv_send/utils/xigo_ui.dart';
import 'package:cv_send/widget/option_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gif_view/gif_view.dart';
import 'package:lottie/lottie.dart';

part 'package:cv_send/_childrens/home/_childrens/info/_sections/item_experience.dart';
part 'package:cv_send/_childrens/home/_childrens/info/_sections/item_responsability.dart';

class Page extends StatelessWidget {
  const Page({
    super.key,
    required this.pass,
  });

  final int pass;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return BlocProvider(
      create: (context) => BlocInfo(
        repository: Repository(),
      )
        ..add(GetExperiencesEvent())
        ..add(GetProjectsEvent())
        ..add(ChangedOptionSelectedEvent(optionSelected: pass)),
      child: Scaffold(
        backgroundColor: XigoColors.backgroundColor,
        body: Padding(
          padding:
              const EdgeInsets.all(InitProyectUiValues.spacingXl * 2).copyWith(
            bottom: InitProyectUiValues.spacingMedium,
          ),
          child: ListView(
            children: [
              const SizedBox(height: InitProyectUiValues.spacingMedium),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox.shrink(),
                  size.width < 650
                      ? const Icon(
                          Icons.heat_pump_outlined,
                          color: Colors.white,
                        )
                      : BlocSelector<BlocInfo, InfoState, int>(
                          selector: (state) {
                            return state.model.optionSelected;
                          },
                          builder: (context, value) {
                            return Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                if (value != 0) ...[
                                  OptionTitle(
                                    title: InitProyectUiValues.about,
                                    onTap: () {
                                      context.read<BlocInfo>().add(
                                            const ChangedOptionSelectedEvent(
                                              optionSelected: 0,
                                            ),
                                          );
                                    },
                                  ),
                                  const SizedBox(
                                    width: InitProyectUiValues.spacingMedium,
                                  ),
                                ],
                                if (value != 1) ...[
                                  OptionTitle(
                                    title: InitProyectUiValues.project,
                                    onTap: () {
                                      context.read<BlocInfo>().add(
                                            const ChangedOptionSelectedEvent(
                                              optionSelected: 1,
                                            ),
                                          );
                                    },
                                  ),
                                  const SizedBox(
                                    width: InitProyectUiValues.spacingMedium,
                                  ),
                                ],
                                if (value != 2) ...[
                                  OptionTitle(
                                    title: InitProyectUiValues.contact,
                                    onTap: () {
                                      context.read<BlocInfo>().add(
                                            const ChangedOptionSelectedEvent(
                                              optionSelected: 2,
                                            ),
                                          );
                                    },
                                  ),
                                  const SizedBox(
                                    width: InitProyectUiValues.spacingMedium,
                                  ),
                                ],
                                const Icon(
                                  Icons.ads_click_sharp,
                                  color: Colors.white,
                                ),
                              ],
                            );
                          },
                        ),
                ],
              ),
              const SizedBox(height: InitProyectUiValues.spacingMedium),
              BlocSelector<BlocInfo, InfoState, int>(
                selector: (state) {
                  return state.model.optionSelected;
                },
                builder: (context, value) {
                  switch (value) {
                    case 0:
                      return const AboutMeWidget();
                    case 1:
                      return const ProjectWidget();
                    case 2:
                      return const SizedBox();
                    default:
                      return const SizedBox();
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProjectWidget extends StatelessWidget {
  const ProjectWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: BlocBuilder<BlocInfo, InfoState>(
        builder: (context, state) {
          return GridView.count(
            addAutomaticKeepAlives: true,
            shrinkWrap: true,
            mainAxisSpacing: 8.0, // spacing between rows
            crossAxisSpacing: 8.0, // spacing between columns
            crossAxisCount: 2,
            children: List.generate(
              state.model.projects.length,
              (index) {
                final project = state.model.projects[index];
                return project.routeGif.isEmpty
                    ? Image.asset(
                        project.routeImage,
                        height: 200,
                      )
                    : GifView.asset(
                        project.routeGif,
                        height: 200,
                        frameRate: 30,
                      );
                // return Gif(
                //   autostart: Autostart.loop,
                //   image: const AssetImage(
                //     InitProyectUiValues.tulGif,
                //   ),
                // );
              },
            ),
          );
        },
      ),
    );
  }
}

class AboutMeWidget extends StatelessWidget {
  const AboutMeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          XigoText.fontSizeCustom(
            label: '${InitProyectUiValues.aboutMe}.',
            fontWeight: FontWeight.bold,
            fontSize: 32.0,
            color: XigoColors.textColor,
          ),
          const SizedBox(
            height: InitProyectUiValues.spacingXSL,
          ),
          XigoText.title(
            label: InitProyectUiValues.lastestWorks,
            fontWeight: FontWeight.bold,
            color: XigoColors.textColor,
          ),
          const SizedBox(
            height: InitProyectUiValues.spacingXSL,
          ),
          BlocBuilder<BlocInfo, InfoState>(
            builder: (context, state) {
              return Column(
                children: List.generate(
                  state.model.experiences.length,
                  (index) {
                    final item = state.model.experiences[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: InitProyectUiValues.spacingXSL,
                      ),
                      child: ItemExperienceWidget(
                        title: item.title,
                        profile: item.profile,
                        date: item.date,
                        description: item.description,
                        listResponsabilitys: item.resposabilitys,
                      ),
                    );
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class IconTap extends StatelessWidget {
  const IconTap({
    super.key,
    this.width = 30.0,
    this.height = 30.0,
    required this.iconRoute,
    required this.onTap,
  });
  final double width;
  final double height;
  final String iconRoute;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Lottie.asset(
        iconRoute,
        width: width,
        height: height,
      ),
    );
  }
}
