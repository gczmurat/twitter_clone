import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/global/common/app_bar.dart';
import 'package:flutter_application_1/global/common/bottom_navigation_bar.dart';
import 'package:flutter_application_1/global/controllers/initial_controllers.dart';
import 'package:get/get.dart';
import '../message_page/home_page_view.dart';
import '../message_page/messape_page_view.dart';
import '../search_page/search_page_view.dart';
import '../notifications_page/notifications_page_view.dart';


class HomeView extends StatelessWidget {
  final InitialController _initialController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
      appBar: appBar(context),
      bottomNavigationBar: GlobalBottomNavigationBar(),
      body: _initialController.currentPage.value == 0
          ? const HomePageView()
          : _initialController.currentPage.value == 1
              ? SearchPageView()
              : _initialController.currentPage.value == 2
                  ? NotificationsPageView()
                  : _initialController.currentPage.value == 3
                      ? MessagePageView()
                      : Container(),
    ),);
  }
}
