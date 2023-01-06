import 'package:flutter/material.dart';
import 'package:kambo_travel/core.dart';
import '../controller/detail_controller.dart';

class DetailView extends StatefulWidget {
  const DetailView({Key? key}) : super(key: key);

  Widget build(context, DetailController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: const [],
          ),
        ),
      ),
    );
  }

  @override
  State<DetailView> createState() => DetailController();
}