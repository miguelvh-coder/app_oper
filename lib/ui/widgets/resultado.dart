import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/result_writer.dart';


class resultado extends StatelessWidget {
  const resultado ({super.key,});

  @override
  Widget build(BuildContext context) {
    result_writer controller = Get.find();

    return Container(
      color: Colors.blueGrey,
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(() => Text(controller.result.toString())),
        ],
      ),
    );
  }
}

