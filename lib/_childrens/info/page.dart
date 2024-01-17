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
            CvSpacing.lg,
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

class ItemUrl extends StatefulWidget {
  const ItemUrl({
    super.key,
    required this.onTap,
    required this.svgUrl,
  });

  final VoidCallback onTap;
  final String svgUrl;

  @override
  State<ItemUrl> createState() => _ItemUrlState();
}

class _ItemUrlState extends State<ItemUrl> {
  bool isOn = false;
  StreamController<bool> streamController = StreamController<bool>();

  @override
  void initState() {
    streamController.add(isOn);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      onHover: (value) {
        streamController.add(value);
      },
      child: StreamBuilder<bool>(
        stream: streamController.stream,
        builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                10.0,
              ),
              color: (snapshot.data ?? false)
                  ? XigoColors.containerSelected
                  : Colors.white,
              border: Border.all(
                color: (snapshot.data ?? false)
                    ? Colors.white
                    : XigoColors.containerBorder,
              ),
            ),
            padding: const EdgeInsets.all(
              InitProyectUiValues.spacingEight,
            ),
            child: SvgPicture.asset(
              widget.svgUrl,
              height: 20,
              width: 20,
              colorFilter: ColorFilter.mode(
                (snapshot.data ?? false)
                    ? Colors.white
                    : XigoColors.containerBorder,
                BlendMode.srcIn,
              ),
            ),
          );
        },
      ),
    );
  }
}
