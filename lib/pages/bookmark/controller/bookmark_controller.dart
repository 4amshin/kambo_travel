import 'package:flutter/material.dart';
import '../../../mvc_properti/state_util.dart';
import '../view/bookmark_view.dart';

class BookmarkController extends State<BookmarkView> implements MvcController {
  static late BookmarkController instance;
  late BookmarkView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
