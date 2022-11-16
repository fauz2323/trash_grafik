import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widget/card_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            SizedBox(
              height: 30,
            ),
            CardWidget(
              widget: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Nama : Ahmad Farid Hidayat"),
                      Text("Nim : 171011402448"),
                    ],
                  ),
                  Image.asset(
                    'asset/image/foto.jpeg',
                    width: Get.width * 30 / 100,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
