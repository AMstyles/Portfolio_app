import 'dart:ui';

import 'package:flutter/material.dart';

class me extends StatefulWidget {
  me({Key? key}) : super(key: key);

  @override
  State<me> createState() => _meState();
}

class _meState extends State<me> {
  String paragraph =
      "Hi everyone, I think this' all you might wanna know about me. I'm a fairly simple person. I'm nothing out of the ordinary. I value humanity above all. My fantasy is that; There will come a day when there's global peace, where everyone feels safe, where no one goes to sleep on an empty stomach. I love programming, so much that I don't mind spending the whole day doing it. I'm friendly, I don't bother anyone. If you see me in the streets, let's take a picture. I am afraid of snakes, lol. I also play too much video games. I watch anime so hate me for it if you want. ";
  String paragraph1 =
      "I'm also very sensitive, I'm get offended very easily so 'Go Easy On Me'. I'm obsessed with Adele for some reason. I really don't know what else to say. Just follow me on instagram, send me a DM, give me money orr... something. My favorite color is black, don't ask me why, maybe I'm evil. Favourite movie is Everything,Everything. Also I'm an Apple fanboy";
  String paragraph2 =
      "I've broken an arm sometime ago when I was ninja-ing. also share a strong passion for photography. Music is my life, I swear if music was to disappear from the face of the Earth, I'd die, literally. I know you're starting to get bored now by reading this meaningless piece of writting, so let me end it right here. Have good day";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 400,
            flexibleSpace: FlexibleSpaceBar(
              background: Hero(
                tag: 'adele',
                child: Image.asset(
                  'lib/images/hello-world.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
              child: Container(
            margin: const EdgeInsets.all(10),
            color: Colors.white,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Text(
                      'Arinaho Muleba',
                      style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 50,
                      ),
                    ),
                  ],
                ),
                const Divider(
                  thickness: 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      children: const [
                        Icon(
                          Icons.audiotrack,
                          size: 40,
                          color: Colors.pink,
                        ),
                        Text('lol'),
                      ],
                    ),
                    Column(
                      children: const [
                        Text(
                          '19',
                          style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue),
                        ),
                        Text('age')
                      ],
                    ),
                    Column(
                      children: const [
                        Icon(
                          Icons.male,
                          color: Colors.blue,
                          size: 40,
                        ),
                        Text('gender'),
                      ],
                    )
                  ],
                ),
                Divider(),
                Text(
                  paragraph,
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
                Divider(),
                Text(
                  paragraph1,
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
                Divider(),
                Text(
                  paragraph,
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                )
              ],
            ),
          )),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.share,
        ),
      ),
    );
  }
}
