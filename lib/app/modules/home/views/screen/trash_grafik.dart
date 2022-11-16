import 'package:flutter/cupertino.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:trash_graphic/app/modules/home/controllers/home_controller.dart';
import 'package:trash_graphic/app/modules/home/views/screen/widget/card_widget.dart';

import '../../../../data/model/chart_model.dart';

class TrashGraphics extends StatelessWidget {
  const TrashGraphics({Key? key, required this.homeController})
      : super(key: key);
  final HomeController homeController;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            SfCartesianChart(
              primaryXAxis: CategoryAxis(),
              title: ChartTitle(text: "Grafik Sampah Organik"),
              series: <ChartSeries<ChartModel, String>>[
                LineSeries<ChartModel, String>(
                    dataSource: homeController.organik,
                    xValueMapper: (ChartModel sales, _) => sales.time,
                    yValueMapper: (ChartModel sales, _) => sales.ketinggian,
                    name: 'Trash graph',
                    // Enable data label
                    dataLabelSettings: DataLabelSettings(isVisible: true))
              ],
            ),
            SizedBox(
              height: 30,
            ),
            SfCartesianChart(
              primaryXAxis: CategoryAxis(),
              title: ChartTitle(text: "Grafik Sampah Anorganik"),
              series: <ChartSeries<ChartModel, String>>[
                LineSeries<ChartModel, String>(
                    dataSource: homeController.anorganik,
                    xValueMapper: (ChartModel sales, _) => sales.time,
                    yValueMapper: (ChartModel sales, _) => sales.ketinggian,
                    name: 'Trash graph',
                    // Enable data label
                    dataLabelSettings: DataLabelSettings(isVisible: true))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
