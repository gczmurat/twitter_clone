import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


PreferredSizeWidget appBar(BuildContext context) {
  return PreferredSize(
      child: AppBar(
        elevation: 0,
        title:   Text("Twitter", style: Theme.of(context).textTheme.displayLarge),
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage("https://media.licdn.com/dms/image/C4E03AQEIteJwPZVqmw/profile-displayphoto-shrink_400_400/0/1656676087050?e=1689206400&v=beta&t=UyaCWqAQOTOMuPo8d4mAA0msJg_LvABl9bjvpiekojs"),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: const Icon(Icons.star_border, color: Colors.black,),
          )
        ],
      ),
      preferredSize: const Size.fromHeight(50.0));
}
