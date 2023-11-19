import 'package:atlsnackbar/utils/per_define_snack_bar/atl_snack_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ElevatedButton(
            onPressed: () {
              AtlSnackbarUtil.showSuccess(message: "ascaca");
            },
            child: const Text('Show Success SnackBar'),
          ),
          ElevatedButton(
            onPressed: () {
              AtlSnackbarUtil.showError(message: "ascaca");
            },
            child: const Text('Show Error SnackBar'),
          ),
          ElevatedButton(
            onPressed: () {
              AtlSnackbarUtil.showHelp(message: "ascaca");
            },
            child: const Text('Show Help SnackBar'),
          ),
          ElevatedButton(
            onPressed: () {
              AtlSnackbarUtil.showWarning(message: "ascaca");
            },
            child: const Text('Show Warning SnackBar'),
          ),
        ],
      ),
    );
  }
}
