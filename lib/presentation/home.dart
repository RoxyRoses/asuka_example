import 'package:asuka/asuka.dart';
import 'package:asuka_teste/presentation/homecontroller.dart';
import 'package:flutter/material.dart';

import 'widgets/dividerbar_widget.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Asuka Demo',
      theme: ThemeData(),
      builder: Asuka.builder,
      initialRoute: '/',
      navigatorObservers: [Asuka.asukaHeroController],
      routes: {
        '/': (_) => const AsukaExemple(),
      },
    );
  }
}

class AsukaExemple extends StatefulWidget {
  const AsukaExemple({Key? key}) : super(key: key);

  @override
  State<AsukaExemple> createState() => _AsukaExempleState();
}

class _AsukaExempleState extends State<AsukaExemple> {
  final controller = HomeController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 199, 62, 62),
        title: const Center(
          child: Text('Asuka Example'),
        ),
      ),
      body: Scaffold(
        body: Padding(
          padding:
              const EdgeInsets.only(top: 30, left: 10, right: 10, bottom: 30),
          child: SingleChildScrollView(
            child: Column(
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red[300]),
                  onPressed: () {
                    AsukaSnackbar.warning("Warning").show();
                  },
                  child: const Text('Warning'),
                ),
                const DividerWidget(),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red[300]),
                  onPressed: () {
                    AsukaSnackbar.success("Success").show();
                  },
                  child: const Text('Success'),
                ),
                const DividerWidget(),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red[300]),
                  onPressed: () {
                    AsukaSnackbar.alert("Alert").show();
                  },
                  child: const Text('Alert'),
                ),
                const DividerWidget(),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red[300]),
                  onPressed: () {
                    AsukaSnackbar.info("info").show();
                  },
                  child: const Text('info'),
                ),
                const DividerWidget(),
                SizedBox(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.red[300]),
                    onPressed: () {
                      AsukaSnackbar.message("message").show();
                    },
                    child: const Text('message'),
                  ),
                ),
                const DividerWidget(),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red[300]),
                  onPressed: controller.onClickSnackbar,
                  child: const Text('Custom SnackBar'),
                ),
                const DividerWidget(),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red[300]),
                  onPressed: controller.onClickDialog,
                  child: const Text('Custom Dialog'),
                ),
                const DividerWidget(),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red[300]),
                  onPressed: () {
                    controller.onClickModalBottomSheet();
                  },
                  child: const Text('Modal Bottom Sheet'),
                ),
                const DividerWidget(),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red[300]),
                  onPressed: () {
                    controller.onClickBottomSheet();
                  },
                  child: const Text('Bottom Sheet'),
                ),
                const DividerWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
