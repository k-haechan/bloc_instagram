import 'package:bloc_instagram/component/avatar.dart';
import 'package:bloc_instagram/component/post.dart';
import 'package:flutter/material.dart';

class FeedPage extends StatelessWidget {
  const FeedPage({super.key});

  // Widget _Stroys() {
  //   return Container(
  //     color: Colors.red,
  //     height: 100,
  //     child: CarouselSlider(
  //       items: List.generate(
  //         7,
  //         (_) => Story(),
  //       ),
  //       options: CarouselOptions(
  //         height: 100,
  //         viewportFraction: 0.2,
  //         initialPage: 2,
  //         enableInfiniteScroll: false,
  //         reverse: false,
  //         // autoPlay: true,
  //         // autoPlayInterval: Duration(seconds: 3),
  //         // autoPlayAnimationDuration: Duration(milliseconds: 800),
  //         // autoPlayCurve: Curves.fastOutSlowIn,
  //         scrollDirection: Axis.horizontal,

  //       ),
  //     ),
  //   );
  // }

  // Widget _Stroys() {
  //   return Container(
  //     color: Colors.red,
  //     height: 100,
  //     child: ListView.builder(
  //       scrollDirection: Axis.horizontal,
  //       itemCount: 7,
  //       itemBuilder: (context, index) {
  //         return Story();
  //       },
  //     ),
  //   );
  // }

  Widget _Stroys() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          7,
          (idx) => Padding(
            padding: const EdgeInsets.all(5),
            child: idx == 0 ? const MyStoryAvatar() : const StoryAvatar(),
          ),
        ),
      ),
    );
  }

  Widget _Posts() {
    return Expanded(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Post();
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextButton(
          onPressed: () {},
          child: const Row(
            children: [
              Text("Instagram",
                  style: TextStyle(color: Colors.black, fontSize: 23)),
              Icon(Icons.keyboard_arrow_down_outlined)
            ],
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.favorite_border)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.search_rounded)),
        ],
      ),
      body: Column(
        children: [_Stroys(), _Posts()],
      ),
      bottomNavigationBar: BottomNavigationBar(
          // backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.black,
          selectedIconTheme: const IconThemeData(
            fill: 1.0,
          ),
          unselectedIconTheme: const IconThemeData(
            fill: 0.5,
          ),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          unselectedItemColor: Colors.black,
          currentIndex: 0,
          iconSize: 28,
          items: [
            const BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: 'Feed',
                activeIcon: Icon(Icons.home)),
            // BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            const BottomNavigationBarItem(
                icon: Icon(Icons.send_outlined),
                label: 'Direct Message',
                activeIcon: Icon(Icons.send)),
            const BottomNavigationBarItem(
                icon: Icon(Icons.add_box_outlined),
                label: 'Add',
                activeIcon: Icon(Icons.add_box)),
            const BottomNavigationBarItem(
                icon: Icon(Icons.movie_outlined),
                label: 'Shorts',
                activeIcon: Icon(Icons.movie)),
            BottomNavigationBarItem(
                icon: const CircleAvatar(
                  backgroundImage:
                      NetworkImage('https://picsum.photos/200/300'),
                  radius: 14,
                ),
                label: 'Profile',
                activeIcon: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.black, width: 1),
                  ),
                  child: const CircleAvatar(
                    backgroundImage:
                        NetworkImage('https://picsum.photos/200/300'),
                    radius: 14,
                  ),
                )),
          ]),
    );
  }
}
