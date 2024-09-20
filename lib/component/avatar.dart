import 'package:flutter/material.dart';

// 디폴트 이미지를 넣은 Avatar 위젯을 만들까?

class StoryAvatar extends StatelessWidget {
  const StoryAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(3),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(colors: [
              Colors.orange,
              Colors.purple,
            ])
          ),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white, width: 3), // 색상은 테마 색으로 나중에 변경
            ),
            child: const CircleAvatar(
              radius: 35,
              backgroundImage: NetworkImage('https://picsum.photos/200/300'),
            ),
          ),
        ),
        Text('username'),
      ],
    );
  }
}

class MyStoryAvatar extends StatelessWidget {
  const MyStoryAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: CircleAvatar(
                radius: 38,
                backgroundImage: NetworkImage('https://picsum.photos/200/300'),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 4,
              child: Container(
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue,
                  border: Border.all(color: Colors.white, width: 2),
                ),
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 18,
                ),
              ),
            ),
          ],
        ),
        Text('내 스토리'),
      ],
    );
  }
}