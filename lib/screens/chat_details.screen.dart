import 'package:flutter/material.dart';
import '../constants.dart';
import '../widgets/widgets.dart';

class ChatDeatailScreen extends StatefulWidget {
  const ChatDeatailScreen({Key? key}) : super(key: key);

  @override
  State<ChatDeatailScreen> createState() => _ChatDeatailScreenState();
}

class _ChatDeatailScreenState extends State<ChatDeatailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 30,
        centerTitle: false,
        backgroundColor: kPrimaryColor,
        toolbarHeight: 70,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            CircleAvatar(
              backgroundColor: Colors.white,
              // radius: 18,
            ),
            SizedBox(width: 10),
            Text(
              "Jane Doe",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
            )
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.videocam_rounded)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.call)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: ListView.separated(
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return index.isEven
                        ? const MyMessages()
                        : const SenderMessage();
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(height: 5);
                  },
                  itemCount: 20),
            ),
          ),
          Container(
            height: 70,
            padding: const EdgeInsets.symmetric(vertical: 10),
            decoration: const BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(color: Colors.black12, offset: Offset(-2.0, 0.0))
            ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    child: SizedBox(
                  width: double.infinity,
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.sentiment_satisfied_alt_outlined,
                          size: 28,
                          color: Colors.grey,
                        ),
                      ),
                      const Expanded(
                        child: TextField(
                          style: TextStyle(color: Colors.black54),
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Message',
                              hintStyle: TextStyle(color: Colors.grey)),
                        ),
                      ),
                      const Icon(
                        Icons.attach_file,
                        color: Colors.grey,
                      ),
                      const SizedBox(width: 10),
                      const Icon(
                        Icons.camera_alt,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                )),
                MaterialButton(
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(12),
                  color: kPrimaryColor,
                  onPressed: () {},
                  child: const Icon(
                    Icons.send,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
