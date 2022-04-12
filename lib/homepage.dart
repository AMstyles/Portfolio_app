import 'package:flutter/material.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';
import 'package:portfolio_app/bounce.dart';
import 'package:portfolio_app/me.dart';
import 'package:portfolio_app/post.dart';
import 'package:like_button/like_button.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

Future<void> onRefresh() async {
  await Future.delayed(Duration(milliseconds: 900));
}

int index = 0;
bool isHeartAnimating = false;
List<String> posts = [
  'lib/images/arinaho1.jpg',
  'lib/images/adele.jpg',
  'lib/images/mount.jpg',
  'lib/images/roof.jpg',
  'lib/images/show.jpg',
];
List<String> title = [
  'Fake smile',
  'Favorite Artist',
  'Hobby',
  'Pain',
  'favorite Photo'
];

List<bool> like = [
  false,
  true,
  false,
  false,
  true,
];

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    bool isAnimating;
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: onRefresh,
        displacement: 50,
        color: Colors.white,
        backgroundColor: Colors.transparent,
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.transparent,
              pinned: true,
              floating: false,
              snap: false,
              expandedHeight: 250,
              flexibleSpace: FlexibleSpaceBar(
                background: Hero(
                  tag: 'adele',
                  child: Image.asset(
                    'lib/images/adele.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                title: const Text(
                  'AM_Styles',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                centerTitle: true,
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
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: ((context) => me()),
                              ));
                        },
                        child: const CircleAvatar(
                          backgroundImage:
                              AssetImage('lib/images/hello-world.jpg'),
                          radius: 45,
                        ),
                      ),
                      const Text(
                        'Arinaho Muleba',
                        style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 35,
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
                            size: 30,
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
                                fontSize: 30,
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
                            size: 30,
                          ),
                          Text('gender'),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            )),
            //Divider(),
            SliverToBoxAdapter(
              child: Column(
                children: List.generate(
                  5,
                  (index) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            child: const CircleAvatar(
                              radius: 12,
                              backgroundImage:
                                  AssetImage('lib/images/hello-world.jpg'),
                            ),
                          ),
                          const Text('Arinaho'),
                          const Spacer(),
                          Text(
                            title[index],
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Spacer(),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.more_horiz),
                          ),
                        ],
                      ),
                      //imagepost
                      GestureDetector(
                        onDoubleTap: () {
                          setState(() {
                            like[index] = true;
                            isHeartAnimating = true;
                          });
                        },
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Image.asset(
                              posts[index],
                            ),
                            Opacity(
                              opacity: isHeartAnimating ? 1 : 0,
                              child: Bounce(
                                isAnimating = isHeartAnimating,
                                isAnimating: isHeartAnimating,
                                duration: Duration(milliseconds: 500),
                                child: const Icon(
                                  Icons.favorite,
                                  color: Colors.white,
                                  size: 100,
                                ),
                                onEnd: () => setState(() {
                                  isHeartAnimating = false;
                                }),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Bounce(
                            isAnimating,
                            isAnimating: like[index],
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  like[index] = !like[index];
                                });
                              },
                              icon: !like[index]
                                  ? Icon(Icons.favorite_border)
                                  : Icon(
                                      Icons.favorite,
                                      color: Colors.pink,
                                    ),
                            ),
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
                                    text: ' Adele',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(text: ' and'),
                                  TextSpan(
                                    text: ' 7 891 others',
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
                                    text: 'boity',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        ' Amazing photo ever put on AMstagram',
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
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
