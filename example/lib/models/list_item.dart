import 'package:flutter_content_block_parser/flutter_content_block_parser.dart';

class ListItemBlock extends IBlock {
  final int index;
  final int parentSize;

  ListItemBlock(
    super.type,
    super.id, {
    required this.index,
    required this.parentSize,
  });

  factory ListItemBlock.fromContentBlock(IBlock block) {
    return ListItemBlock(
      block.type,
      block.id,
      index: block.obj?['index'] ?? 0,
      parentSize: block.obj?['parentSize'] ?? 0,
    );
  }
}
