import 'package:flutter/material.dart';
import 'package:portfolio/widgets/p_tabs.dart';

enum Section { home, about, projects, message }

class StageCtrl extends ChangeNotifier {
  Section selectedSection = Section.home;

  // getSection(String name) {
  //   switch (name) {
  //     case "Home":
  //       return selectedSection = Section.home;
  //     case "About":
  //       return selectedSection = Section.about;
  //     case "Projects":
  //       return selectedSection = Section.projects;
  //     case "Message":
  //       return selectedSection = Section.message;
  //   }
  //   notifyListeners();
  // }

  void updateSelectedSection(SectionData section) {
    selectedSection = section.type;
    notifyListeners();
  }
}
