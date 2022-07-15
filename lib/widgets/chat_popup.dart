import 'package:flutter/material.dart';

class ChatPopup extends StatelessWidget {
  const ChatPopup({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      elevation: 2,
      offset: const Offset(0, 50),
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Icon(Icons.more_vert),
      ),
      itemBuilder: (context) {
        return const [
          PopupMenuItem(value: 1, child: Text('New Group')),
          PopupMenuItem(
            value: 2,
            child: Text('New Broadcast'),
          ),
          PopupMenuItem(
            value: 3,
            child: Text('Linked Devices'),
          ),
          PopupMenuItem(
            value: 4,
            child: Text('Starred Messages'),
          ),
          PopupMenuItem(
            value: 5,
            child: Text('Settings'),
          ),
        ];
      },
    );
  }
}
