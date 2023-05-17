import 'package:flutter/material.dart';
import 'package:flutter_application_1/global/themes/theme.dart';
import 'package:flutter_application_1/global/utils/routes.dart';
import 'package:get/get.dart';
import 'global/controllers/initial_controllers.dart';

void main() {
  final InitialController _initialController =
      Get.put(InitialController(), permanent: true);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Twitter',
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      getPages: routes,
      builder: (context, Widget) {
        return MediaQuery(
            data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: true),
            child: Theme(
                data: twitterTheme(context),
                child: Overlay(
                  initialEntries: [OverlayEntry(builder: (context) => Widget!)],
                )));
      },
    );
  }
}
