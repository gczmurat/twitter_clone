import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/global/controllers/initial_controllers.dart';
import 'package:flutter_application_1/global/design/const_design.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class GlobalBottomNavigationBar extends StatelessWidget {
    final InitialController _initialController = Get.find();

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      enableFeedback: false,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      unselectedItemColor: kBodyColor,
      selectedItemColor: kPrimaryColor,
      items: const [BottomNavigationBarItem(icon: Icon(Icons.home),label: ""),
      BottomNavigationBarItem(icon: Icon(Icons.search),label: ""),
      BottomNavigationBarItem(icon: Icon(Icons.notifications),label: ""),
      BottomNavigationBarItem(icon: Icon(Icons.email),label: ""),],
      currentIndex: _initialController.currentPage.value,
      onTap: (position) => _initialController.currentPage.value = position,
    );
  }
}
