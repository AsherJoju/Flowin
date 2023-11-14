import 'package:flutter/material.dart';

class ExpansionUtil {
  bool isExpanded;
  Widget header;
  Widget body;

  ExpansionUtil({
    this.isExpanded = false,
    required this.header,
    required this.body,
  });
}
