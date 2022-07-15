import 'package:flutter/material.dart';
import '../constants.dart';

class Calls extends StatelessWidget {
  const Calls({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        heroTag: null,
        onPressed: () {},
        child: const Icon(Icons.add_ic_call_rounded),
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return Container(
                margin: const EdgeInsets.only(bottom: 5, top: 5),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: kPrimaryColor,
                    backgroundImage: NetworkImage(
                        'https://randomuser.me/api/portraits/women/${index + 1}.jpg'),
                    radius: 35,
                  ),
                  title: const Text(
                    'Keisha K.',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  subtitle: Row(
                    children: [
                      Icon(Icons.call_made, color: Colors.green[700], size: 18),
                      const SizedBox(width: 5),
                      const Text('Mar 15, 11:08 AM'),
                    ],
                  ),
                  trailing: IconButton(
                    icon: const Icon(Icons.call, color: kPrimaryColor),
                    onPressed: () {},
                  ),
                ),
              );
            }, childCount: 20),
          )
        ],
      ),
    );
  }
}
