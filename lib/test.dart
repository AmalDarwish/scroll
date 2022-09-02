import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller.dart';

class Test extends GetView<Controller> {
  const Test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget item(int i) {
      return Container(
        height: 50,
        color: Colors.amber[100],
        child: Center(child: Text('Item  $i')),
      );
    }

    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Login Page')),
        ),
        body: Column(children: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            const SizedBox(
              height: 100,
            ),
            ElevatedButton(
                onPressed: () {
                  controller.k.value = false;
                },
                child: const Text('Stop Scrolling')),
            const SizedBox(
              width: 100,
            ),
            ElevatedButton(
                onPressed: () {
                  controller.k.value = true;
                },
                child: const Text('Continue Scrolling'))
          ]),
          Center(
              child: SizedBox(
                  height: 600,
                  child: Obx(
                    () => (ListView(
                      padding: const EdgeInsets.all(8),
                      physics: controller.k.value
                          ? const AlwaysScrollableScrollPhysics()
                          : const NeverScrollableScrollPhysics(),
                      children: <Widget>[
                        for (int i = 1; i < 111; i++) item(i),
                      ],
                    )),
                  ))),
        ]));
  }
}
