import 'package:cv_send/utils/text/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cv_send/_childrens/init/bloc/bloc.dart' as bloc;
import 'package:cv_send/utils/colors.dart';
import 'package:cv_send/utils/navigation.dart';
import 'package:cv_send/utils/xigo_ui.dart';
import 'package:lottie/lottie.dart';

part 'package:cv_send/_childrens/init/listeners/core.dart';

class Page extends StatelessWidget {
  const Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: XigoColors.greenColor,
      body: BlocListener<bloc.Bloc, bloc.State>(
        listener: listener,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Lottie.asset(
                InitProyectUiValues.animation,
              ),
              XigoText.labelText(
                label: InitProyectUiValues.welcomeToMyResum,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
