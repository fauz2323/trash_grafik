import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:trash_graphic/app/data/model/chart_model.dart';
import 'package:trash_graphic/app/modules/home/controllers/home_controller.dart';
import 'package:trash_graphic/app/modules/home/views/screen/widget/card_widget.dart';

class TrashLevel extends StatelessWidget {
  const TrashLevel({Key? key, required this.homeController}) : super(key: key);
  final HomeController homeController;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          children: [
            CardWidget(
              widget: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Ketinggian Sampah Organik"),
                      Text("12 cm"),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Ketinggian Sampah Anorganik"),
                      Text("17 cm"),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              width: Get.width * 80 / 100,
              child: ElevatedButton(
                onPressed: () {
                  Map data = {
                    'jenis': 'Organik',
                    'data': homeController.organik,
                  };
                  Get.toNamed('/level-detail', arguments: data);
                },
                child: Text("Data Ketinggian Sampah Organik"),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              width: Get.width * 80 / 100,
              child: ElevatedButton(
                onPressed: () {
                  Map data = {
                    'jenis': 'Anorganik',
                    'data': homeController.anorganik,
                  };
                  Get.toNamed('/level-detail', arguments: data);
                },
                child: Text(
                  "Data Ketinggian Sampah Anorganik",
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
