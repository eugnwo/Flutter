import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          StoryArea(),
          FeedList(),
        ],
      ),
    );
  }
}

class StoryArea extends StatelessWidget {
  const StoryArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          10,
          (index) => UserStory(userName: 'User $index'),
        ),
      ),
    );
  }
}

class UserStory extends StatelessWidget {
  final String userName;

  const UserStory({
    required this.userName,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
      child: Column(
        children: [
          Container(
            width: 80,
            height: 80,
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
            decoration: BoxDecoration(
              color: Colors.blue.shade300,
              borderRadius: BorderRadius.circular(40),
            ),
          ),
          Text(userName),
        ],
      ),
    );
  }
}

class FeedData {
  final String userName;
  final int likeCount;
  final String content;

  FeedData(
      {required this.userName, required this.likeCount, required this.content});
}

final feedDataList = [
  FeedData(userName: 'User1', likeCount: 235, content: '오늘 점심은 맛있었다.'),
  FeedData(userName: 'User2', likeCount: 123, content: '오늘은 맛있었다.'),
  FeedData(userName: 'User3', likeCount: 2, content: '오늘 맛있었다.'),
  FeedData(userName: 'User4', likeCount: 3, content: '오늘 점심.'),
  FeedData(userName: 'User5', likeCount: 6, content: '맛있었다.'),
  FeedData(userName: 'User6', likeCount: 4, content: '오늘 점.'),
];

class FeedList extends StatelessWidget {
  const FeedList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: feedDataList.length,
      itemBuilder: (context, index) => FeedItem(feedData: feedDataList[index]),
    );
  }
}

class FeedItem extends StatelessWidget {
  final FeedData feedData;

  const FeedItem({Key? key, required this.feedData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue.shade300,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text(feedData.userName),
                ],
              ),
              IconButton(
                icon: Icon(Icons.more_vert),
                onPressed: () {},
              ),
            ],
          ),
        ),
        const SizedBox(height: 8),
        Container(
          width: double.infinity,
          height: 280,
          color: Colors.indigo.shade300,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.favorite_outline_rounded)),
                  IconButton(
                      onPressed: () {}, icon: Icon(CupertinoIcons.chat_bubble)),
                  IconButton(
                      onPressed: () {}, icon: Icon(CupertinoIcons.paperplane)),
                ],
              ),
              IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.bookmark)),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Text(
            '좋아요 ${feedData.likeCount}개',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 4),
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: feedData.userName, style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: feedData.content,
                ),
              ],
              style: const TextStyle(color: Colors.black),
            ),
          ),
        ),
        const SizedBox(height: 8),
      ],
    );
  }
}
