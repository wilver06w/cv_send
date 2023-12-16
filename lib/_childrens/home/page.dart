import 'package:cv_send/utils/colors.dart';
import 'package:cv_send/utils/functions.dart';
import 'package:cv_send/utils/navigation.dart';
import 'package:cv_send/utils/text/text.dart';
import 'package:cv_send/utils/xigo_ui.dart';
import 'package:cv_send/widget/icon_tap.dart';
import 'package:cv_send/widget/option_title.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class Page extends StatelessWidget {
  const Page({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: XigoColors.backgroundColor,
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const SizedBox(height: InitProyectUiValues.spacingMedium),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(
                Icons.ac_unit_sharp,
                color: Colors.white,
              ),
              size.width < 650
                  ? const Icon(
                      Icons.heat_pump_outlined,
                      color: Colors.white,
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        OptionTitle(
                          title: InitProyectUiValues.about,
                          onTap: () {
                            XigoRoute.navInfoReplaceName();
                          },
                        ),
                        const SizedBox(
                          width: InitProyectUiValues.spacingXSL,
                        ),
                        OptionTitle(
                          title: InitProyectUiValues.project,
                          onTap: () {
                            XigoRoute.navInfoReplaceName();
                          },
                        ),
                        const SizedBox(
                          width: InitProyectUiValues.spacingXSL,
                        ),
                        OptionTitle(
                          title: InitProyectUiValues.contact,
                          onTap: () {
                            XigoRoute.navInfoReplaceName();
                          },
                        ),
                      ],
                    ),
            ],
          ),
          const SizedBox(height: InitProyectUiValues.spacingXl * 3),
          Shimmer(
            colorOpacity: 0.9,
            interval: const Duration(seconds: 5),
            child: Center(
              child: XigoText.fontSizeCustom(
                label: InitProyectUiValues.iAm,
                color: XigoColors.textColor,
                letterSpacing: 9.9,
                fontSize: 36.6,
              ),
            ),
          ),
          const SizedBox(height: InitProyectUiValues.spacingMedium),
          XigoText.labelText(
            label: InitProyectUiValues.descriptionMe,
            letterSpacing: 1.0,
            color: XigoColors.textColor,
          ),
          const SizedBox(height: InitProyectUiValues.spacingMedium),
          Row(
            children: [
              XigoText.labelText(
                label: InitProyectUiValues.seeMoreAbout,
                color: XigoColors.textColor,
              ),
              Lottie.asset(
                InitProyectUiValues.tapAnimation,
                width: 30,
                height: 30,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconTap(
                iconRoute: InitProyectUiValues.linkedin,
                onTap: () {
                  Functions.launchInBrowser(
                    url: InitProyectUiValues.linkedinLink,
                  );
                },
              ),
              IconTap(
                iconRoute: InitProyectUiValues.github,
                width: 40,
                height: 40,
                onTap: () {
                  Functions.launchInBrowser(
                    url: InitProyectUiValues.githubLink,
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
