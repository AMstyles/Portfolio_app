import 'package:flutter/material.dart';
import 'package:portfolio_app/homepage.dart';

class post extends StatefulWidget {
  post({Key? key}) : super(key: key);

  @override
  State<post> createState() => _postState();
}

get index => index;

class _postState extends State<post> {
  List<String> posts = [
    'lib/images/adele.jpg',
    'lib/images/arinaho1.jpg',
    'lib/images/mount.jpg',
    'lib/images/roof.jpg',
    'lib/images/profile.jpg',
    'lib/images/show.jpg',
    'lib/images/FullSizeRender.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              child: const CircleAvatar(
                radius: 12,
                backgroundImage: AssetImage('lib/images/adele.jpg'),
              ),
            ),
            const Text('Arinaho'),
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_horiz),
            ),
          ],
        ),
        //imagepost
        Image.asset(
          posts[index],
        ),
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite_border),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.chat_bubble_outline_rounded),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.label_outline_rounded),
            ),
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.bookmark_outline),
            ),
          ],
        ),
        Container(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: const TextSpan(
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  children: [
                    TextSpan(text: 'liked by'),
                    TextSpan(
                      text: ' profilename',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(text: ' and'),
                    TextSpan(
                      text: ' others',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              RichText(
                text: const TextSpan(
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  children: [
                    TextSpan(
                      text: 'Profilename',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: ' Amazing photo ever put on AMstagram',
                    ),
                  ],
                ),
              ),
              Text(
                'view all 159 comments',
                style: TextStyle(
                  color: Colors.black38,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
