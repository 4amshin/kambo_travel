import 'package:flutter/material.dart';

import '../../../mvc_properti/state_util.dart';
import '../view/detail_view.dart';

class DetailController extends State<DetailView> implements MvcController {
  static late DetailController instance;
  late DetailView view;

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
