import 'package:flutter/material.dart';
import '../home_page/list_rename.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: ListView.builder(
        itemBuilder: ((context, index) {
          return const Padding(
            padding: EdgeInsets.only(top: 10),
            child: Column(
              children: [
                HomePageViewListData(),
                Divider(color: Colors.black26),
              ],
            ),
          );
        }),
        itemCount: 20,
      ),
    );
  }
}