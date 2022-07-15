import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

import '../constants.dart';

class HomeSliverAppBar extends StatelessWidget {
  const HomeSliverAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      bottom: const TabBar(
        indicatorColor: Colors.white,
        unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w400),
        labelStyle: TextStyle(fontWeight: FontWeight.w600),
        tabs: [
          Tab(icon: Icon(Icons.camera_alt)),
          Tab(text: 'Chats'),
          Tab(text: 'Status'),
          Tab(text: 'Calls'),
        ],
      ),
      title: const Text(
        'WhatsUp',
        style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22),
      ),
      actions: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
        const ChatPopup()
      ],
      expandedHeight: 120,
      floating: true,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        background: Container(color: kPrimaryColor),
      ),
    );
  }
}
