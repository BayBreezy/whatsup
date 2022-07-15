import 'package:flutter/material.dart';
import 'package:whatsup/screens/screens.dart';
import '../widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        body: NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverOverlapAbsorber(
                handle:
                    NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                sliver: const HomeSliverAppBar(),
              )
            ];
          },
          // Appbar

          body: const TabBarView(children: [
            // Camera
            CameraScreen(),
            //Chats
            Chats(),
            // Status
            Status(),
            // Calls
            Calls()
          ]),
        ),
      ),
    );
  }
}
