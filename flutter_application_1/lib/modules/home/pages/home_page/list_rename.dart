import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePageViewListData extends StatelessWidget {
  const HomePageViewListData({super.key});

  @override
Widget build(BuildContext context) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      circleAvatarImage(),
      SizedBox(width: 8),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                nameText(context),
                tagText(context),
                dotDateText(context),
              ],
            ),
            SizedBox(height: 8),
            textBody(context),
            SizedBox(
              width: double.infinity,
              child: cardImage(context),
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.favorite),
                        onPressed: () {
                          // Like butonuna tıklama işlemleri buraya eklenir
                        },
                      ),
                      
                    ],
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.repeat),
                        onPressed: () {
                          // Retweet butonuna tıklama işlemleri buraya eklenir
                        },
                      ),
                      
                    ],
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.chat_bubble_outline),
                        onPressed: () {
                          // Yorum butonuna tıklama işlemleri buraya eklenir
                        },
                      ),
                  
                    ],
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.share),
                        onPressed: () {
                          // Paylaş butonuna tıklama işlemleri buraya eklenir
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      IconButton(
        icon: Icon(Icons.more_vert),
        onPressed: () {
          // İkon tıklama işlemleri buraya eklenir
        },
      ),
    ],
  );
}

  Card cardImage(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      color: Colors.purple,
      child: cardSizedBox(context),
    );
  }

  SizedBox cardSizedBox(BuildContext context) {
    return SizedBox(
      height: 200,
      width: MediaQuery.of(context).size.width * 0.78,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.78,
        height: 200,
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(10),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network(
            'https://images6.alphacoders.com/103/thumb-1920-1038319.jpg',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  SizedBox textSized(BuildContext context) => SizedBox(
        height: context.height * 0.178,
        width: context.width * 0.78,
        child: textBody(context),
      );

  Text textBody(BuildContext context) => const Text(
        "Twitter, Inc., merkezi Kaliforniya eyaletinin San Francisco kentinde bulunan bir Amerikan iletişim şirketidir. Daha önce bir kısa video uygulaması olan Vine ve canlı yayın hizmeti sunan Periscope'u çalıştırıyordu.",
        style: TextStyle(
          fontSize: 15,
          color: Colors.black87,
          height: 1.4,
          fontWeight: FontWeight.normal,
          fontStyle: FontStyle.normal,
        ),
      );

  Text nameText(BuildContext context) => const Text(
        "Murat",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontSize: 16,
        ),
        textAlign: TextAlign.left,
      );

  Text tagText(BuildContext context) => const Text(
        " @gczmurat",
        style: TextStyle(
          color: Colors.grey,
          fontSize: 16,
        ),
        textAlign: TextAlign.left,
      );

  Text dotDateText(BuildContext context) => const Text(
        " • 1h",
        style: TextStyle(
          color: Colors.grey,
          fontSize: 16,
        ),
        textAlign: TextAlign.left,
      );
  CircleAvatar circleAvatarImage() => const CircleAvatar(
        radius: 20,
        backgroundColor: Colors.grey,
        backgroundImage: NetworkImage(
          "https://media.licdn.com/dms/image/C4E03AQEIteJwPZVqmw/profile-displayphoto-shrink_400_400/0/1656676087050?e=1689206400&v=beta&t=UyaCWqAQOTOMuPo8d4mAA0msJg_LvABl9bjvpiekojs",
        ),
      );
}
