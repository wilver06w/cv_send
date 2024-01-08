import 'dart:async';

import 'package:cv_send/utils/colors.dart';
import 'package:cv_send/utils/functions.dart';
import 'package:cv_send/utils/text/text.dart';
import 'package:cv_send/utils/xigo_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
        children: const [
          Header(),
        ],
      ),
    );
  }
}

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {
                Functions.launchInBrowser(
                  url: InitProyectUiValues.linkedinLink,
                );
              },
              child: XigoText.title(
                label: InitProyectUiValues.myName,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: InitProyectUiValues.spacingEight,
            ),
            XigoText.labelText(
              label: InitProyectUiValues.mobileDeveloper,
              color: Colors.black,
            ),
            const SizedBox(
              height: InitProyectUiValues.spacingEight,
            ),
            Row(
              children: [
                SvgPicture.asset(
                  InitProyectUiValues.svgIconWorld,
                  height: InitProyectUiValues.spacingMedium,
                  width: InitProyectUiValues.spacingMedium,
                ),
                const SizedBox(
                  width: InitProyectUiValues.spacingEight,
                ),
                XigoText.labelText(
                  label: InitProyectUiValues.country,
                  color: Colors.black,
                ),
              ],
            ),
            Row(
              children: [
                ItemUrl(
                  onTap: () {},
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 110,
          width: 120,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              InitProyectUiValues.imageMe,
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.fill,
            ),
          ),
        ),
      ],
    );
  }
}

class ItemUrl extends StatefulWidget {
  const ItemUrl({
    super.key,
    required this.onTap,
  });

  final VoidCallback onTap;

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
              InitProyectUiValues.svgIconGitHub,
              height: 20,
              width: 20,
            ),
          );
        },
      ),
    );
  }
}
