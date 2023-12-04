// ignore_for_file: must_be_immutable

import "package:flutter/material.dart";
import "package:portfolio/controllers/stage_controll.dart";
import "package:portfolio/providers/stage_provider.dart";
import "package:portfolio/utils/app_theme.dart";
import "package:portfolio/widgets/section.dart";
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PTabs extends ConsumerStatefulWidget {
  const PTabs({Key? key}) : super(key: key);

  @override
  ConsumerState<PTabs> createState() => _PTabsState();
}

class _PTabsState extends ConsumerState<PTabs> {
  SectionData? selectedSection;

  @override
  void initState() {
    selectedSection = _sections[0];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //provider
    final stgManager = ref.watch(stageProvider);
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: _sections.length,
        itemBuilder: (context, index) {
          return PContents(
            text: _sections[index].title,
            pIcon: _sections[index].pIcon,
            pcolor: selectedSection == _sections[index] ? AppTheme.selectedColor : AppTheme.unSelectedColor,
            onSelection: () {
              selectedSection = _sections[index];
              stgManager.updateSelectedSection(_sections[index]);
              setState(() {});
            },
          );
        });
  }
}
  class SectionData {
  String title;
  IconData pIcon;
  Color color;
  Section type;
  SectionData({required this.title, required this.pIcon, required this.color, required this.type});
}

final List<SectionData> _sections = [
  SectionData(type: Section.home, title: "Home", pIcon: Icons.home, color: AppTheme.selectedColor),
  SectionData(type: Section.about, title: "About", pIcon: Icons.person, color: AppTheme.selectedColor),
  SectionData(type: Section.projects, title: "Projects", pIcon: Icons.extension, color: AppTheme.selectedColor),
  SectionData(type: Section.message, title: "Message", pIcon: Icons.message, color: AppTheme.selectedColor),
];
