import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/controllers/stage_controll.dart';
import 'package:portfolio/providers/stage_provider.dart';
import 'package:portfolio/utils/app_utils.dart';
import 'package:portfolio/views/about.dart';
import 'package:portfolio/views/home.dart';
import 'package:portfolio/views/message.dart';
import 'package:portfolio/views/projects.dart';

class Stage extends ConsumerStatefulWidget {
  const Stage({super.key});
  @override
  ConsumerState<Stage> createState() => _StageState();
}

class _StageState extends ConsumerState<Stage> {
  @override
  Widget build(BuildContext context) {
    final section = ref.watch(stageProvider.select((value) => value.selectedSection));
    return Stack(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width - 300,
          child: ClipRect(
            child: Image.asset(
              AppUtils.profileImage,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          child: getStageContents(section))
      ],
    );
  }

  Widget getStageContents(Section section) {
    if (section == Section.home) {
      return const Home();
    } else if (section == Section.about) {
      return const About();
    } else if (section == Section.projects) {
      return const Project();
    } else {
      return const Message();
    }
  }
}
