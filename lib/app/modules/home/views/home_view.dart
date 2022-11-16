import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:trash_graphic/app/modules/home/views/screen/home.dart';
import 'package:trash_graphic/app/modules/home/views/screen/trash_grafik.dart';
import 'package:trash_graphic/app/modules/home/views/screen/trash_level.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        floatingActionButton:
            FloatingActionButton(onPressed: () => Get.toNamed('test-app')),
        appBar: AppBar(
          title: Text("Trash Monitoring"),
          bottom: TabBar(
            tabs: [
              Tab(
                text: "Trash Level",
              ),
              Tab(
                text: "Trash Graphic",
              ),
              Tab(
                text: "About",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            TrashLevel(
              homeController: controller,
            ),
            TrashGraphics(homeController: controller),
            HomeScreen(),
          ],
        ),
      ),
    );
  }
}
