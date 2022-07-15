import 'package:flutter/material.dart';
import 'package:story_view/story_view.dart';
import 'package:whatsup/constants.dart';

// ignore: must_be_immutable
class StoryScreen extends StatelessWidget {
  StoryScreen({Key? key, required this.count}) : super(key: key);
  int count;

  @override
  Widget build(BuildContext context) {
    final controller = StoryController();
    final items = List.generate(count, ((index) {
      if (index.isEven) {
        return StoryItem.pageImage(
          url:
              'https://images.pexels.com/photos/189349/pexels-photo-189349.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
          controller: controller,
          caption: "Lovely day at the beach",
          imageFit: BoxFit.cover,
        );
      }
      if (index % 3 == 0) {
        return StoryItem.pageImage(
          url:
              'https://images.pexels.com/photos/2113556/pexels-photo-2113556.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
          controller: controller,
          caption: "Breakfast in bed 🙏🏽",
          imageFit: BoxFit.cover,
        );
      }
      if (index == 1) {
        return StoryItem.text(
          title: "It's a lovely day to be alive!",
          backgroundColor: kPrimaryColor,
          textStyle: const TextStyle(
            fontSize: 28,
          ),
        );
      }
      return StoryItem.pageImage(
        url:
            "https://images.pexels.com/photos/3355732/pexels-photo-3355732.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        controller: controller,
        caption: "Lovely day at the beach",
        imageFit: BoxFit.cover,
      );
    }));

    return Material(
      child: StoryView(
        storyItems: items,
        controller: controller,
        inline: false,
        onComplete: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
