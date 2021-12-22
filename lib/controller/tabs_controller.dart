import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokedex/view/pages/info_page/info_page.dart';

class TabsController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void onInit() {
    controller = TabController(length: 3, vsync: this);
    // TODO: implement onInit
    super.onInit();
  }

  @override
  void onClose() {
    controller.dispose();
    // TODO: implement onClose
    super.onClose();
  }
}
