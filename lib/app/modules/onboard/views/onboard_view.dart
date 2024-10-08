import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/onboard_controller.dart';

class OnboardView extends GetView<OnboardController> {
  const OnboardView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OnboardView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'OnboardView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
