

import 'content_block_container.dart';
import 'i_content_block.dart';

class ContentBlock extends IBlock {

  ContentBlock(super.type, super.id, {required super.obj});


  static IBlock fromJson(Map<String, dynamic> obj) {
    if (obj.containsKey('items')) {
      return BlockContainer(
        obj['type'],
        obj['id'],
        obj: Map.from(obj),
        children: (obj['items'] as List).cast<Map<String, dynamic>>()
            .map((e) => ContentBlock.fromJson(e))
            .toList(),
      );
    }

    return ContentBlock(
      obj['type'],
      obj['id'],
      obj: Map.from(obj),
    );
  }
}
