import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Message {
  final String username;
  final String messageContent;
  final String time;
  final String avatarUrl;

  Message({
    required this.username,
    required this.messageContent,
    required this.time,
    required this.avatarUrl,
  });
}

class MessageController extends GetxController {
  final messages = <Message>[
    Message(
      username: 'User 1',
      messageContent: 'Message content 1',
      time: '3h',
      avatarUrl: '',
    ),
    Message(
      username: 'User 2',
      messageContent: 'Message content 2',
      time: '5h',
      avatarUrl: '',
    ),
  ].obs;

  final random = Random();

  String getRandomAvatarUrl() {
    final avatarIndex = random.nextInt(5) + 1;
    return '';
  }
}

class MessagePageView extends StatelessWidget {
  final MessageController controller = Get.put(MessageController());

  final List<String> carImages = [
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const TextField(
          decoration: InputDecoration(
            hintText: 'Search',
            hintStyle: TextStyle(
              color: Colors.grey,
            ),
            border: InputBorder.none,
            prefixIcon: Icon(
              Icons.search,
              color: Colors.grey,
            ),
          ),
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
             
            },
          ),
        ],
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        iconTheme: IconThemeData(color: Colors.grey.shade700),
      ),
      body: Obx(
        () => ListView.builder(
          itemCount: controller.messages.length,
          itemBuilder: (context, index) {
            final message = controller.messages[index];
      
            return ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage("https://cdn.motor1.com/images/mgl/mrz1e/s3/coolest-cars-feature.jpg"),
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    message.username,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    message.time,
                    style: const TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              subtitle: Text(
                message.messageContent,
                style: const TextStyle(
                  color: Colors.black,
                ),
              ),
              trailing: const Icon(
                Icons.check,
                color: Colors.blue,
              ),
              onTap: () {
                
              },
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {
          
        },
        child: const Icon(
          Icons.edit,
          color: Colors.white,
        ),
      ),
    );
  }
}
