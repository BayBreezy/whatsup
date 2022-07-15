import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../constants.dart';

class CameraScreen extends StatefulWidget {
  const CameraScreen({Key? key}) : super(key: key);

  @override
  State<CameraScreen> createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  final ImagePicker _picker = ImagePicker();
  File? selectedImage;

  void showToast(String text) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Row(
        children: [
          const Icon(Icons.auto_awesome_rounded, color: Colors.white),
          const SizedBox(width: 5),
          Text(text),
        ],
      ),
      duration: const Duration(seconds: 7),
      dismissDirection: DismissDirection.horizontal,
      behavior: SnackBarBehavior.floating,
      margin: const EdgeInsets.all(10),
    ));
  }

  void takePicture() async {
    try {
      var image = await _picker.pickImage(source: ImageSource.camera);
      if (image == null) return;
      setState(() {
        selectedImage = File(image.path);
      });
      showToast(
        'Image displayed. We not saving it tho lol',
      );
    } catch (e) {
      showToast('Something went wrong. Try again');
    }
  }

  void selectPicture() async {
    try {
      var image = await _picker.pickImage(source: ImageSource.gallery);
      if (image == null) return;
      setState(() {
        selectedImage = File(image.path);
      });
      showToast(
        'Image displayed. We not saving it tho lol',
      );
    } catch (e) {
      showToast('Something went wrong. Try again');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: kPrimaryColor,
              backgroundImage:
                  selectedImage == null ? null : FileImage(selectedImage!),
              radius: 100,
            ),
            const SizedBox(height: 100),
            ElevatedButton(
                onPressed: () {
                  takePicture();
                },
                child: const Text('Take A Picture')),
            const SizedBox(
              height: 10,
            ),
            const Text('or'),
            const SizedBox(
              height: 10,
            ),
            TextButton(
              onPressed: () {
                selectPicture();
              },
              child: const Text('Select An Image'),
            ),
          ],
        ),
      ),
    );
  }
}
