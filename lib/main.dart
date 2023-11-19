import 'package:atlsnackbar/feature/home/home_page.dart';
import 'package:atlsnackbar/utils/snack_bar/set_up.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  InitApp().initScaffoldMessengerKey();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      scaffoldMessengerKey: Get.find<GlobalKey<ScaffoldMessengerState>>(),
      home: HomePage(),
    );
  }
}
