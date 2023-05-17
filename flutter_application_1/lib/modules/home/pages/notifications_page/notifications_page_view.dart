import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotificationsPageView extends StatelessWidget {
  const NotificationsPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.star, size: 40, color: Colors.purple),
                        SizedBox(width: 8),
                        circleAvatarImage(),
                      ],
                    ),
                    Icon(Icons.more_horiz),
                  ],
                ),
                SizedBox(height: 8),
                Text(
                  'Recomemended For You',
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 15,
                      ),
                ),
                SizedBox(height: 8),
                Text(
                  'Murat',
                  style: Theme.of(context).textTheme.subtitle1,
                ),
                Divider(color: Colors.black26),
              ],
            ),
          );
        },
        itemCount: 30,
      ),
    );
  }

  CircleAvatar circleAvatarImage() => CircleAvatar(
        radius: 20,
        backgroundColor: Colors.grey,
        backgroundImage: NetworkImage(
          'https://media.licdn.com/dms/image/C4E03AQEIteJwPZVqmw/profile-displayphoto-shrink_400_400/0/1656676087050?e=1689206400&v=beta&t=UyaCWqAQOTOMuPo8d4mAA0msJg_LvABl9bjvpiekojs',
        ),
      );
}
