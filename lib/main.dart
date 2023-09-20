import 'package:app_oper/ui/controllers/dificultad.dart';
import 'package:app_oper/ui/controllers/result_writer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:app_oper/ui/central.dart';
import 'ui/pages/content/pregunta.dart';

void main() {
  Get.put(result_writer());
  Get.put(dificultad());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'app_oper Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            title: const Text('app_oper Demo'),
          ),
          //body: const Central(),    //ir a la pagina de inicio
          body: const CalculatorApp(),   //ir a la pagina de inicio
        ));
  }
}

//LISTO