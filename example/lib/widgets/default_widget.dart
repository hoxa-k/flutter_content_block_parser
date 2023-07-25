import 'package:content_block_parser/content_block_parser.dart';
import 'package:flutter/cupertino.dart';

class DefaultWidget extends StatelessWidget {
  final IBlock block;

  const DefaultWidget(this.block, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text('[${block.type}]');
  }
}
