import 'package:flutter/material.dart';
import 'package:status_view/status_view.dart';
import 'package:whatsup/screens/story.screen.dart';

import '../constants.dart';

class Status extends StatelessWidget {
  const Status({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              mini: true,
              backgroundColor: Colors.grey[300],
              heroTag: null,
              onPressed: () {},
              child: const Icon(
                Icons.edit,
                color: Colors.black,
                size: 20,
              ),
            ),
            const SizedBox(height: 20),
            FloatingActionButton(
              heroTag: null,
              onPressed: () {},
              child: const Icon(Icons.camera_alt),
            ),
          ],
        ),
        body: Builder(builder: (context) {
          return CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              SliverOverlapInjector(
                handle:
                    NestedScrollView.sliverOverlapAbsorberHandleFor(context),
              ),
              SliverToBoxAdapter(
                child: ListTile(
                  onTap: () {},
                  leading: Stack(
                    children: [
                      CircleAvatar(
                        backgroundColor: kPrimaryColor.withOpacity(0.5),
                        radius: 35,
                      ),
                      Positioned(
                          bottom: 7,
                          right: 5,
                          child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(50),
                                  border: Border.all(
                                      color: Colors.white, width: 2)),
                              child: const Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 20,
                              )))
                    ],
                  ),
                  title: const Text(
                    'My status',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  subtitle: const Text('Tap to add a new status update'),
                ),
              ),
              const SliverPadding(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                sliver: SliverToBoxAdapter(
                  child: Text('Recent updates'),
                ),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate((context, index) {
                  return Container(
                    margin: const EdgeInsets.only(bottom: 5),
                    child: ListTile(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    StoryScreen(count: index.isEven ? 5 : 9)));
                      },
                      leading: StatusView(
                        centerImageUrl:
                            'https://randomuser.me/api/portraits/women/${index + 1}.jpg',
                        radius: 32,
                        spacing: 15,
                        strokeWidth: 2,
                        numberOfStatus: index.isEven ? 5 : 9,
                        indexOfSeenStatus: index.isEven ? 1 : 3,
                        padding: 0,
                        seenColor: Colors.grey,
                        unSeenColor: kPrimaryColor,
                      ),
                      title: const Text(
                        'Janna Smith',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      subtitle: const Text('Today, 8:34 AM'),
                    ),
                  );
                }, childCount: 20),
              )
            ],
          );
        }));
  }
}
