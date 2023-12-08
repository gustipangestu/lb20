

import 'package:camera/camera.dart';
import 'package:flutter/cupertino.dart';

class AppsProvider extends ChangeNotifier{
  
  int _count = 0;
  int get count => _count;

  void increment(){
    _count++;
    notifyListeners();
  }
}

class CameraProvider extends ChangeNotifier{
  late CameraDescription firstcamera;

  CameraProvider(){
    initCamera();
  }
  Future<void> initCamera() async {
    final cameras = await availableCameras();
    firstcamera = cameras.first;
    notifyListeners();
  }
  CameraDescription get getCam => firstcamera;
}

