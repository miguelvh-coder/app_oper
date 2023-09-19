import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/dificultad.dart';


class operacion extends StatelessWidget {
  const operacion({super.key,});

  @override
  Widget build(BuildContext context) {
    dificultad controller = Get.find();


    return Container(
      color: Colors.amber,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: null, child: Text('Increment'))
        ],
      ),
    );
  }
}
