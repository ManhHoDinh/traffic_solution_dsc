import 'package:flutter/material.dart';

class CDM {
  IconData icon;
  String title;
  List<String> submenus;
  late List<bool> submenuCheckboxes; // Add a list to track checkbox states

  CDM(this.icon, this.title, this.submenus) {
    submenuCheckboxes = List.generate(submenus.length, (index) => false);
  }
}
