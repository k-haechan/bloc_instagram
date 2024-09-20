import 'package:cached_network_image/cached_network_image.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  const Post({super.key});

  // Widget _PostHeader() {
  //   return ListTile(
  //     leading: const CircleAvatar(),
  //     title: const Text('username'),
  //     subtitle: const Text('location'),
  //     trailing: IconButton(
  //       icon: const Icon(Icons.more_horiz),
  //       onPressed: () {},
  //     ),
  //   );
  // }
  Widget _PostHeader() {
    return Row(children: [
      const CircleAvatar(),
      const SizedBox(width: 8),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text('username', style: TextStyle(fontWeight: FontWeight.bold)),
          Text('location'),
        ],
      ),
      const Spacer(),
      IconButton(
        icon: const Icon(Icons.more_horiz),
        onPressed: () {},
      ),
    ],);
  }

  Widget _PostImage() {
    // 리팩토링 필요할 듯 화면 전체가 안돼서
    const imageUrl = 'https://picsum.photos/200/300';
    return const Image(
      image: CachedNetworkImageProvider(imageUrl),
      fit: BoxFit.cover,
    );
    // Image.network('https://picsum.photos/200/300', fit: BoxFit.fill, height: 300,);
  }

  Widget _PostActions() {
    return Row(
      children: [
        IconButton(
          icon: const Icon(Icons.favorite_border),
          onPressed: () {},
        ),
        Row(
          children: [
            IconButton(
              icon: const Row(
                children: [
                  Icon(Icons.mode_comment_outlined),
                  Text('3'), // state에 따라 관리됨
                ],
              ),
              onPressed: () {},
              padding: EdgeInsets.zero,
            ),
          ],
        ),
        IconButton(
          icon: const Icon(Icons.send_outlined),
          onPressed: () {},
        ),
        const Spacer(),
        IconButton(
          icon: const Icon(Icons.bookmark_border),
          onPressed: () {},
        ),
      ],
    );
  }

  Widget _PostInfo() {
    return Container(
      color: Colors.amber,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: const TextSpan(
                style: TextStyle(color: Colors.black),
                children: [
                  TextSpan(
                    text: 'se_bin78',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(text: '님 외 '),
                  TextSpan(
                    text: '여러 명',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(text: '이 좋아합니다.'),
                ]),
          ),
          Container(
            color: Colors.red,
            child: SizedBox(
              child: ExpandableText(
                'caption~~~~~~~~~~~~~~\n 캡쳔~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~₩',
                prefixText: '사용자1',
                prefixStyle: TextStyle(fontWeight: FontWeight.bold),
                expandText: '더 보기',
                maxLines: 2,
                expandOnTextTap: true,
                
              ),
            ),
          ),
          Text('1일 전'),
        ],
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Column(
        children: [
          _PostHeader(),
          _PostImage(),
          _PostActions(),
          // _PostLikes(),
          // _PostCaption(),
          _PostInfo(),
          // _PostTimeAgo(),
        ],
      ),
    );
  }
}
