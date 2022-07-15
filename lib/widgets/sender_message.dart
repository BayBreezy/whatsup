import 'package:flutter/material.dart';

import '../constants.dart';

class SenderMessage extends StatelessWidget {
  const SenderMessage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width * 0.8,
        ),
        child: Card(
          elevation: 0.7,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Stack(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: Text(
                  'A Flutter plugin for iOS and Android allowing access to the device cameras and recording of videos.',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Positioned(
                  bottom: 2,
                  right: 5,
                  child: Row(
                    children: const [
                      Text(
                        '6:15 PM',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                      SizedBox(width: 5),
                      Icon(
                        Icons.done_all,
                        color: kPrimaryColor,
                        size: 17,
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
