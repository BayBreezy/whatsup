import 'package:flutter/material.dart';
import 'package:whatsup/screens/chat_details.screen.dart';
import '../constants.dart';

class Chats extends StatelessWidget {
  const Chats({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.message_rounded),
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
            return Container(
              margin: const EdgeInsets.only(bottom: 5, top: 5),
              child: ListTile(
                enableFeedback: true,
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const ChatDeatailScreen();
                    },
                  ));
                },
                leading: CircleAvatar(
                  backgroundColor: kPrimaryColor,
                  backgroundImage: NetworkImage(
                      'https://randomuser.me/api/portraits/women/${index + 1}.jpg'),
                  radius: 35,
                ),
                title: const Text(
                  'Janna Smith',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: const Text(
                  'lorem ipsum chat jakd tyq3wyu jgavfs hkjgajsv  aksuhdghv',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                trailing: const Text('7:30pm'),
              ),
            );
          }, childCount: 20))
        ],
      ),
    );
  }
}
