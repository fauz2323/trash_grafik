import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/level_detail_controller.dart';

class LevelDetailView extends GetView<LevelDetailController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Level Sampah'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Text(
              "Data Level Sampah ${controller.jenis}",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(color: Colors.blue.shade100),
                  width: Get.width * 40 / 100,
                  child: Text("Tanggal"),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(color: Colors.blue.shade100),
                  width: Get.width * 40 / 100,
                  child: Text("Ketinggian"),
                ),
              ],
            ),
            Expanded(
              child: ListView(
                children: controller.chartModel
                    .map(
                      (element) => Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            width: Get.width * 40 / 100,
                            child: Text(element.time),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            width: Get.width * 40 / 100,
                            child: Text(element.ketinggian.toString() + " cm"),
                          ),
                        ],
                      ),
                    )
                    .toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
