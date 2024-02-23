import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:image/image.dart' as img;
import 'dart:io';
import 'package:image_picker/image_picker.dart';

//



class CameraApp extends StatefulWidget {
  const CameraApp({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CameraAppState createState() => _CameraAppState();
}

class _CameraAppState extends State<CameraApp> {
  late CameraController controller;
  late File imageFile;
  late List<CameraDescription> cameras;
Future<void> myCamera()async{
WidgetsFlutterBinding.ensureInitialized();
  List<CameraDescription> cameras = await availableCameras();
}
  
  @override
  void initState() {
    super.initState();
    controller = CameraController(cameras[0], ResolutionPreset.high);
    controller.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  Future<void> takePicture() async {
    XFile picture = await controller.takePicture();
    File image = File(picture.path);

    // Apply filters to the image using image/image_picker
    img.Image? pictureImage = img.decodeImage(image.readAsBytesSync());
    img.Image grayscaleImage = img.grayscale(pictureImage!);
    
    // Display the processed image
    setState(() {
      imageFile = File('path_to_processed_image');
    });
  }

  @override
  Widget build(BuildContext context) {
    if (!controller.value.isInitialized) {
      return Container();
    }
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: 300,
              height: 300,
              child: imageFile == null ? CameraPreview(controller) : Image.file(imageFile),
            ),
            ElevatedButton(
              onPressed: takePicture,
              child: Text('Take Picture'),
            ),
          ],
        ),
      ),
    );
  }
}
