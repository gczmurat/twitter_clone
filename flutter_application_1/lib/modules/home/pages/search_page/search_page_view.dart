import 'package:flutter/material.dart';
import 'package:flutter_application_1/modules/home/pages/search_page/search_top_image.dart';
import 'package:get/get.dart';

class SearchPageView extends StatelessWidget {
  const SearchPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SearchTopImage(),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              'Trends for you',
              style: Theme.of(context).textTheme.headline1!.copyWith(fontSize: 25),
            ),
          ),
          SizedBox(
            height: context.height * 0.5,
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 10, left: 8, right: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Trending in Turkey', style: Theme.of(context).textTheme.subtitle1),
                          Text(
                            'Seçimler',
                            style: Theme.of(context).textTheme.subtitle1!.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 18,
                                ),
                          ),
                          Text('500k Tweets', style: Theme.of(context).textTheme.subtitle1),
                        ],
                      ),
                      Text(
                        '...',
                        style: Theme.of(context).textTheme.subtitle1!.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 22,
                            ),
                      ),
                    ],
                  ),
                );
              },
              itemCount: 10,
            ),
          ),
          Text('Show More', style: Theme.of(context).textTheme.subtitle1!.copyWith(color: Colors.blue)),
        ],
      ),
    );
  }
}
