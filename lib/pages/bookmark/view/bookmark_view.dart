import 'package:flutter/material.dart';
import 'package:kambo_travel/core.dart';
import '../controller/bookmark_controller.dart';

class BookmarkView extends StatefulWidget {
  const BookmarkView({Key? key}) : super(key: key);

  Widget build(context, BookmarkController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Bookmark"),
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
  State<BookmarkView> createState() => BookmarkController();
}