import 'package:get/get.dart';
import '../../modules/home/pages/home_page/home_view.dart';

List<GetPage<dynamic>> routes = [
  GetPage(
    name: '/',
    page: () => HomeView(),
  )
];