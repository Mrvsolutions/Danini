import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

// img slider state

class ImgController1 {
  var _images = [
    "https://jssors8.azureedge.net/demos/img/gallery/980x380/020.jpg",
  ].obs;

  List<String> get images => _images;

  addImage({required String url}) {
    _images.add(url);
  }
}