import 'package:facebook/widgets/makepost.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../widgets/makestory.dart';
import '../widgets/widgets.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 6,
      vsync: this,
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'Facebook',
            style: const TextStyle(
              color: Color(0xFF1777F2),
              fontSize: 26,
              fontFamily: "my11",
              fontWeight: FontWeight.bold,
              letterSpacing: 0,
            ),
          ),
          actions: [
            CircleButton(
              icon: Icons.search,
              iconSize: 28,
              onPressed: () {
                print('Search');
              },
            ),
            CircleButton(
              icon: MdiIcons.facebookMessenger,
              iconSize: 28,
              onPressed: () {
                print('Messenger');
              },
            ),
          ],
          bottom: PreferredSize(
            preferredSize:
                Size.fromHeight(kToolbarHeight), // Set the preferred height
            child: Container(
              padding: EdgeInsets.only(right: 20),
              child: TabBar(
                controller: _tabController,
                unselectedLabelColor: Color.fromARGB(255, 86, 84, 84),
                labelColor: Colors.blue,
                indicatorPadding: EdgeInsets.only(left: 20.0),
                tabs: [
                  tab(
                    icon: Icons.home_outlined,
                    iconSize: 30,
                    onTap: () {
                      print('HomeScreen');
                    },
                  ),
                  tab(
                    icon: Icons.people_outlined,
                    iconSize: 30,
                    onTap: () {
                      print('Friends');
                    },
                  ),
                  tab(
                    icon: Icons.live_tv_outlined,
                    iconSize: 30,
                    onTap: () {
                      print('Reels');
                    },
                  ),
                  tab(
                    icon: Icons.shopping_bag_outlined,
                    iconSize: 30,
                    onTap: () {
                      print('Market Place');
                    },
                  ),
                  tab(
                    icon: Icons.notifications_outlined,
                    iconSize: 30,
                    onTap: () {
                      print('Notifications');
                    },
                  ),
                  tab(
                    icon: Icons.menu,
                    iconSize: 30,
                    onTap: () {
                      print('Menu');
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
        body: ListView(
          padding: EdgeInsets.all(8.0),
          children: [
            Container(
              padding: EdgeInsets.all(5.0),
              height: 50.0,
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage('assets/images/my5.jpg'),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Align(
                      alignment: Alignment.center,
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                          hintText: 'What\'s on your mind?',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.photo_library),
                    color: Color.fromARGB(255, 112, 197, 113),
                    onPressed: () {
                      print('gallery');
                    },
                  ),
                ],
              ),
            ),
            Divider(),
            Container(
              height: 200.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  MakeStory(
                    text: 'Ali Khan',
                    avatarImage: 'assets/images/my14.jpg',
                    storyImage: 'assets/images/my9.jpg',
                  ),
                  MakeStory(
                    text: 'Hassan Ali',
                    avatarImage: 'assets/images/my12.jpg',
                    storyImage: 'assets/images/my2.jpg',
                  ),
                  MakeStory(
                    text: 'Ibraihm Shahvaiz',
                    avatarImage: 'assets/images/my7.jpg',
                    storyImage: 'assets/images/my10.jpg',
                  ),
                  MakeStory(
                    text: 'Jane Smith',
                    avatarImage: 'assets/images/my15.jpg',
                    storyImage: 'assets/images/my16.jpg',
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 5,
            ),
            MakePost(
              text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
              avatarImage: 'assets/images/my2.jpg',
              postImage: 'assets/images/my3.jpg',
              username: 'John Doe',
              timeAgo: '11h',
              likesCount: 1432,
              commentsCount: 115,
            ),
            MakePost(
              text:
                  'Exploring new adventures.A journey of a thousand miles begins with a single step.Capturing precious moments.Embracing the beauty of nature.',
              avatarImage: 'assets/images/my4.jpg',
              postImage: 'assets/images/my5.jpg',
              username: 'Ahamd Raza',
              timeAgo: '9h',
              likesCount: 410,
              commentsCount: 51,
            ),
            MakePost(
              text:
                  'Embracing change and growth empowering others through compassion.Living life to the fullest.',
              avatarImage: 'assets/images/my6.jpg',
              postImage: 'assets/images/my7.jpg',
              username: 'Faisal Ali',
              timeAgo: '4h',
              likesCount: 210,
              commentsCount: 45,
            ),
            MakePost(
              text: 'Finding solace in the power of art.',
              avatarImage: 'assets/images/my8.jpg',
              postImage: 'assets/images/my9.jpg',
              username: 'Bilal Abbas',
              timeAgo: '2h',
              likesCount: 10,
              commentsCount: 5,
            ),
          ],
        ),
      ),
    );
  }
}
