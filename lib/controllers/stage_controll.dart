import 'package:flutter/material.dart';

enum SelectedSection{
  home,
  about,
  projects,
  message
}

class StageCtrl extends ChangeNotifier{

  SelectedSection selectedSection = SelectedSection.home;

    getSection(String name) {
    switch ( name) {
      case "Home":
        return selectedSection = SelectedSection.home;
      case "About":
        return selectedSection = SelectedSection.about;
      case "Projects":
        return selectedSection = SelectedSection.projects;
      case "Message":
        return selectedSection = SelectedSection.message;
    }
    notifyListeners();
  }
  
}