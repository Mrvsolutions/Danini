import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

// img slider state

class ProductDetailcontroller {
  var _images = [
    "https://jssors8.azureedge.net/demos/img/gallery/980x380/020.jpg",
    "https://jssors8.azureedge.net/demos/img/gallery/980x380/021.jpg",
    "https://jssors8.azureedge.net/demos/img/gallery/980x380/022.jpg",
    "https://jssors8.azureedge.net/demos/img/gallery/980x380/023.jpg",
    "https://jssors8.azureedge.net/demos/img/gallery/980x380/024.jpg",
    "https://jssors8.azureedge.net/demos/img/gallery/980x380/025.jpg",
  ].obs;

  List<String> get images => _images;

  addImage({required String url}) {
    _images.add(url);
  }
}