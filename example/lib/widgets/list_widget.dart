import 'package:flutter_content_block_parser/flutter_content_block_parser.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListWidget extends StatelessWidget {
  final BlockContainer block;
  final List<dynamic> children;

  const ListWidget(this.block, {this.children = const [], super.key});

  @override
  Widget build(BuildContext context) {
    final widgetList = List<Widget>.from(children.whereType<Widget>());
    return Padding(
      padding: const EdgeInsets.all(0),
      child: Column(children: widgetList),
    );
  }
}
