import 'package:flowin/utils/expansion_util.dart';
import 'package:flutter/material.dart';

class ExpansionListWidget extends StatefulWidget {
  final List<ExpansionUtil> items;

  const ExpansionListWidget({super.key, required this.items});

  @override
  State<ExpansionListWidget> createState() => _ExpansionListWidgetState();
}

class _ExpansionListWidgetState extends State<ExpansionListWidget> {
  @override
  Widget build(BuildContext context) {
    return ExpansionPanelList(
      expansionCallback: (panelIndex, isExpanded) {
        setState(() {
          widget.items[panelIndex].isExpanded = isExpanded;
        });
      },
      children: widget.items
          .map((expansionUtil) => ExpansionPanel(
                headerBuilder: (context, isExpanded) => expansionUtil.header,
                body: expansionUtil.body,
                isExpanded: expansionUtil.isExpanded,
              ))
          .toList(),
    );
  }
}
