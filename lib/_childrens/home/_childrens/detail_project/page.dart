import 'package:cv_send/_childrens/home/_childrens/detail_project/bloc/bloc.dart';
import 'package:cv_send/_childrens/home/_childrens/info/models/item_project.dart';
import 'package:cv_send/utils/colors.dart';
import 'package:cv_send/utils/functions.dart';
import 'package:cv_send/utils/text/text.dart';
import 'package:cv_send/utils/xigo_ui.dart';
import 'package:cv_send/widget/item_technologies.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:gif_view/gif_view.dart';

class Page extends StatelessWidget {
  const Page({super.key, required this.itemProject});

  final ItemProject itemProject;

  Widget _buildProjectImage(ItemProject itemProject) {
    if (itemProject.routeGif.isNotEmpty) {
      return SizedBox(
        width: double.infinity,
        height: 300,
        child: GifView.asset(
          itemProject.routeGif,
          frameRate: 30,
          fit: BoxFit.contain,
        ),
      );
    }

    if (itemProject.routeImage.isNotEmpty) {
      return SizedBox(
        width: double.infinity,
        height: 300,
        child: Image.asset(itemProject.routeImage, fit: BoxFit.contain),
      );
    }

    return Container(
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
        color: XigoColors.containerSelected.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(color: XigoColors.containerBorder, width: 1.0),
      ),
      child: const Center(
        child: Icon(
          Icons.image_not_supported,
          size: 50,
          color: XigoColors.textColor,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          DetailProjectBloc()
            ..add(ChangedItemProjectEvent(itemProject: itemProject)),
      child: PopScope(
        canPop: true,
        onPopInvokedWithResult: (didPop, result) async {},
        child: Scaffold(
          backgroundColor: Colors.white,
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Stack(
                      children: [
                        BlocBuilder<DetailProjectBloc, DetailProjectState>(
                          buildWhen: (_, state) =>
                              state is ChangedItemProjectState,
                          builder: (context, state) {
                            return Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.0),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withValues(alpha: 0.3),
                                    blurRadius: 10.0,
                                    spreadRadius: 2.0,
                                  ),
                                ],
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12.0),
                                child: _buildProjectImage(
                                  state.model.itemProject,
                                ),
                              ),
                            );
                          },
                        ),
                        Positioned(
                          left: 10,
                          top: 10,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white.withValues(alpha: 0.9),
                              borderRadius: BorderRadius.circular(8.0),
                              border: Border.all(
                                color: XigoColors.containerBorder,
                                width: 1.0,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(
                                InitProyectUiValues.spacingEight,
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Modular.to.pop();
                                    },
                                    child: const Icon(
                                      Icons.arrow_back_ios_new,
                                      color: Colors.black87,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: InitProyectUiValues.spacingMedium,
                                  ),
                                  BlocBuilder<
                                    DetailProjectBloc,
                                    DetailProjectState
                                  >(
                                    builder: (context, state) {
                                      return XigoText.labelText(
                                        label: state.model.itemProject.title,
                                        color: Colors.black87,
                                        fontWeight: FontWeight.bold,
                                      );
                                    },
                                  ),
                                  const SizedBox.shrink(),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: InitProyectUiValues.spacingMedium),
                  Padding(
                    padding: const EdgeInsets.all(
                      InitProyectUiValues.spacingMedium,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            XigoText.labelText(
                              label: InitProyectUiValues.about,
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                            ),
                            const SizedBox(
                              height: InitProyectUiValues.spacingXs,
                            ),
                            BlocBuilder<DetailProjectBloc, DetailProjectState>(
                              builder: (context, state) {
                                return XigoText.labelText(
                                  label: state.model.itemProject.about,
                                  color: Colors.black54,
                                );
                              },
                            ),
                          ],
                        ),

                        const SizedBox(
                          height: InitProyectUiValues.spacingMedium,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            XigoText.labelText(
                              label: InitProyectUiValues.technologies,
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                            ),
                            const SizedBox(
                              height: InitProyectUiValues.spacingXs,
                            ),
                            BlocBuilder<DetailProjectBloc, DetailProjectState>(
                              builder: (context, state) {
                                return Wrap(
                                  children: List.generate(
                                    state.model.itemProject.technologies.length,
                                    (index) => ItemTechnologies(
                                      technologies: state
                                          .model
                                          .itemProject
                                          .technologies[index],
                                    ),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(
                        InitProyectUiValues.spacingMedium,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              XigoColors.containerSelected,
                              XigoColors.containerBorder,
                            ],
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                          boxShadow: [
                            BoxShadow(
                              color: XigoColors.containerSelected.withValues(
                                alpha: 0.3,
                              ),
                              blurRadius: 8.0,
                              spreadRadius: 1.0,
                            ),
                          ],
                        ),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            shadowColor: Colors.transparent,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 50,
                              vertical: 20,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                          ),
                          onPressed: () {
                            Functions.launchInBrowser(url: itemProject.urlSite);
                          },
                          child: XigoText.labelText(
                            label: InitProyectUiValues.seeMoreAboutProject,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
